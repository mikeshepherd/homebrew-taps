require 'formula'

class Saml2aws < Formula
  homepage 'https://github.com/versent/saml2aws'
  version '2.26.0'
  if OS.mac?
    url 'https://github.com/Versent/saml2aws/releases/download/v2.26.0/saml2aws_2.26.0_darwin_amd64.tar.gz'
    sha256 'b22e0c4180d7d9c89c62f4cd5e1bcdebf2bf1065c9ac9cd5e0b050ed8f6413a9'
  elsif OS.linux?
    url 'https://github.com/Versent/saml2aws/releases/download/v2.26.0/saml2aws_2.26.0_linux_amd64.tar.gz'
    sha256 '7ff7a05f2a7ca624b6a7c83c12d866a3652fe5c2dd861c654f60ad5fcd7a114c'
  end

  depends_on :arch => :x86_64

  def install
    bin.install 'saml2aws'
  end

  test do
    system "#{bin}/saml2aws"
  end
end
