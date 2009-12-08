require 'formula'

class Tidy <Formula
  head 'cvs://:pserver:anonymous@tidy.cvs.sourceforge.net:/cvsroot/tidy:tidy'
  homepage ''

  def install
    system "sh build/gnuauto/setup.sh"

    system "./configure --prefix=#{prefix}"
    system "make"
    system "make install"
  end
end
