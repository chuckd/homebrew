require 'formula'

class Fish <Formula
  head 'git://github.com/benhoskings/fish.git'
  homepage 'http://fishshell.org/'

  depends_on 'readline'
  skip_clean 'share/doc'

  def install
    system "./configure", "--prefix=#{prefix}" #, "--without-xsel"
    system "make install"
  end

  def caveats
    "You will need to add #{HOMEBREW_PREFIX}/bin/fish to /etc/shells\n"+
    "Run `chsh -s #{HOMEBREW_PREFIX}/bin/fish' to make fish your default shell."
  end
end
