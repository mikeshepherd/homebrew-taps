require 'formula'

class Saml2aws < Formula
  homepage 'https://github.com/versent/saml2aws'
  version '2.16.0'
  if OS.mac?
    url 'https://github.com/Versent/saml2aws/releases/download/v2.16.0/saml2aws_2.16.0_darwin_amd64.tar.gz'
    sha256 'b60b7b90b9aa1a7ea5ab831255b7a3f5b99d785891a26ea0b01890469273e606'
  elsif OS.linux?
    url 'https://github.com/Versent/saml2aws/releases/download/v2.16.0/saml2aws_2.16.0_linux_amd64.tar.gz'
    sha256 '388f4cc75707a0d2ce973c5aeec5d872508386a60b5690481d3ddcca12ee5a7e'
  end

  depends_on :arch => :x86_64

  def install
    bin.install 'saml2aws'
  end

  test do
    system "#{bin}/saml2aws"
  end
end
