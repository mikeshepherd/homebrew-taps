require 'formula'

class Saml2aws < Formula
  homepage 'https://github.com/versent/saml2aws'
  url 'https://github.com/Versent/saml2aws/releases/download/v1.4.0/saml2aws_1.4.0_darwin_amd64.tar.gz'
  version '1.4.0'
  sha256 'c2dccfa6626dd3303cd7f2340f0e43fee1c3ffbd35632f3625fd85c9f35d737d'

  depends_on :arch => :x86_64

  def install
    bin.install 'saml2aws'
  end

  test do
    system "#{bin}/saml2aws"
  end
end
