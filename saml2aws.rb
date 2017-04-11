require 'formula'

class Saml2aws < Formula
  homepage 'https://github.com/versent/saml2aws'
  url 'https://github.com/Versent/saml2aws/releases/download/v1.6.0/saml2aws_1.6.0_darwin_amd64.tar.gz'
  version '1.6.0'
  sha256 'f2ebe0dca3af31490e0d0e6617dc9b1aae0bece65f5e7dd47f637e7bf2c821c1'

  depends_on :arch => :x86_64

  def install
    bin.install 'saml2aws'
  end

  test do
    system "#{bin}/saml2aws"
  end
end
