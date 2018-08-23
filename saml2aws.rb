require 'formula'

class Saml2aws < Formula
  homepage 'https://github.com/versent/saml2aws'
  url 'https://github.com/Versent/saml2aws/releases/download/v2.8.0/saml2aws_2.8.0_darwin_amd64.tar.gz'
  version '2.8.0'
  sha256 '95df8109e7e93f6915ee4d0ddb8f88327d391410953317708fc8e87a54a5b293'

  depends_on :arch => :x86_64

  def install
    bin.install 'saml2aws'
  end

  test do
    system "#{bin}/saml2aws"
  end
end
