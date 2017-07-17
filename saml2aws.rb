require 'formula'

class Saml2aws < Formula
  homepage 'https://github.com/versent/saml2aws'
  url 'https://github.com/Versent/saml2aws/releases/download/v1.7.1/saml2aws_1.7.1_darwin_amd64.tar.gz'
  version '1.7.1'
  sha256 'd94de11fda6b4537714132a8d4ab1794c549d88d1429f36fb0c37530df5fa1cc'

  depends_on :arch => :x86_64

  def install
    bin.install 'saml2aws'
  end

  test do
    system "#{bin}/saml2aws"
  end
end
