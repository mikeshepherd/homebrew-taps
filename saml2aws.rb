require 'formula'

class Saml2aws < Formula
  homepage 'https://github.com/versent/saml2aws'
  url 'https://github.com/Versent/saml2aws/releases/download/v2.0.1/saml2aws_2.0.1_darwin_amd64.tar.gz'
  version '2.0.1'
  sha256 'd5d909d5a7ba359b6ce058a7954abb5057647a739faedf6ac58a75cc0e7efb20'

  depends_on :arch => :x86_64

  def install
    bin.install 'saml2aws'
  end

  test do
    system "#{bin}/saml2aws"
  end
end
