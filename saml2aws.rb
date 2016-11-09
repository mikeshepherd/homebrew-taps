require 'formula'

class Saml2aws < Formula
  homepage 'https://github.com/versent/saml2aws'
  url 'https://github.com/Versent/saml2aws/releases/download/v1.3.1/saml2aws_1.3.1_darwin_amd64.tar.gz'
  version '1.3.1'
  sha256 '534479bc0e01fc80c819d927737327a61461f4e0c9a03991783e3cd9dd6996cf'

  depends_on :arch => :x86_64

  def install
    bin.install 'saml2aws'
  end

  test do
    system "#{bin}/saml2aws"
  end
end
