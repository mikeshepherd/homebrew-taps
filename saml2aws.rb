require 'formula'

class Saml2aws < Formula
  homepage 'https://github.com/versent/saml2aws'
  version '2.20.0'
  if OS.mac?
    url 'https://github.com/Versent/saml2aws/releases/download/v2.20.0/saml2aws_2.20.0_darwin_amd64.tar.gz'
    sha256 '63cf581085aeae961d3ec6a6ec59793dfff4691b73f9eacbd191058be8136a43'
  elsif OS.linux?
    url 'https://github.com/Versent/saml2aws/releases/download/v2.20.0/saml2aws_2.20.0_linux_amd64.tar.gz'
    sha256 '7ee441a596cdf2c460dd14f4f3e6fc99ac3e6b39409a492376f55421b9b9bc0d'
  end

  depends_on :arch => :x86_64

  def install
    bin.install 'saml2aws'
  end

  test do
    system "#{bin}/saml2aws"
  end
end
