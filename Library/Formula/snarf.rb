require 'formula'

class Snarf <Formula
  homepage 'http://www.xach.com/snarf/'
  url 'http://www.xach.com/snarf/download/source/snarf-7.0.tar.gz'
  md5 '7470d8457bc0d347b5cd8668c9e735c4'

  def install
    args = ["--disable-debug", "--prefix=#{prefix}"]

    system "./configure", *args
    system "make install"
  end
end
