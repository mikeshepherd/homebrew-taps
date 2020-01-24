require 'formula'

class Saml2aws < Formula
  homepage 'https://github.com/versent/saml2aws'
  version '2.22.0'
  if OS.mac?
    url 'https://github.com/Versent/saml2aws/releases/download/v2.21.0/saml2aws_2.22.0_darwin_amd64.tar.gz'
    sha256 '044e17eaef8683f3c96f626934556c07326da75cc502bfb461b668c2e21c76e9'
  elsif OS.linux?
    url 'https://github.com/Versent/saml2aws/releases/download/v2.21.0/saml2aws_2.22.0_linux_amd64.tar.gz'
    sha256 '3961ac43e742e2725522583cfdb6a3dc932e6a33fc3a6286556f6aa6125725a8'
  end

  depends_on :arch => :x86_64

  def install
    bin.install 'saml2aws'
  end

  test do
    system "#{bin}/saml2aws"
  end
end
