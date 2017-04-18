require 'formula'

class Saml2aws < Formula
  homepage 'https://github.com/versent/saml2aws'
  url 'https://github.com/Versent/saml2aws/releases/download/v1.6.1/saml2aws_1.6.1_darwin_amd64.tar.gz'
  version '1.6.1'
  sha256 '6007bd33f4c1246c6767be53e83695b170b0ae9132f1090dcd0aaf777b18656e'

  depends_on :arch => :x86_64

  def install
    bin.install 'saml2aws'
  end

  test do
    system "#{bin}/saml2aws"
  end
end
