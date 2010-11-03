require 'formula'

class Star <Formula
  url 'ftp://ftp.berlios.de/pub/star/star-1.5.1.tar.gz'
  homepage 'http://cdrecord.berlios.de/old/private/star.html'
  md5 'c44d2094e32f1bd431627824ec7ac578'

  def install
    system "sed 's:/opt/schily:#{prefix}:g' DEFAULTS/Defaults.darwin >new.defaults"
    system "sed 's:sbin:bin:g' DEFAULTS/Defaults.darwin >new.rmt.makefile"
    system "mv -f new.defaults DEFAULTS/Defaults.darwin"
    system "mv -f new.rmt.makefile rmt/Makefile"
    system "make install"
  end
end
