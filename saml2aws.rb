require 'formula'

class Saml2aws < Formula
  homepage 'https://github.com/versent/saml2aws'
  version '2.13.0'
  if OS.mac?
    url 'https://github.com/Versent/saml2aws/releases/download/v2.13.0/saml2aws_2.13.0_darwin_amd64.tar.gz'
    sha256 '3872dde486254daf572630d5d22eeae59511189b9d84dfa7deab760ec4632dbb'
  elsif OS.linux?
    url 'https://github.com/Versent/saml2aws/releases/download/v2.13.0/saml2aws_2.13.0_linux_amd64.tar.gz'
    sha256 'bcd84fcf2af54630688e00884e7bf9850dc6e26d7c278f39eccfba05ab64d12f'
  end

  depends_on :arch => :x86_64

  def install
    bin.install 'saml2aws'
  end

  test do
    system "#{bin}/saml2aws"
  end
end
