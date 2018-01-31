require 'formula'

class Saml2aws < Formula
  homepage 'https://github.com/versent/saml2aws'
  url 'https://github.com/Versent/saml2aws/releases/download/v2.2.0/saml2aws_2.2.0_darwin_amd64.tar.gz'
  version '2.2.0'
  sha256 'cb333b016ab9c2734756a0f5f3c0332fb6f1f44baccbede5c57822ec00a5c9de'

  depends_on :arch => :x86_64

  def install
    bin.install 'saml2aws'
  end

  test do
    system "#{bin}/saml2aws"
  end
end
