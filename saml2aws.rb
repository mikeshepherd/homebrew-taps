require 'formula'

class Saml2aws < Formula
  homepage 'https://github.com/versent/saml2aws'
  version '2.24.0'
  if OS.mac?
    url 'https://github.com/Versent/saml2aws/releases/download/v2.24.0/saml2aws_2.24.0_darwin_amd64.tar.gz'
    sha256 '7be45b9fcb183345152d3bebb4c523aa8f695f4557453bac158543d9f7fd49e0'
  elsif OS.linux?
    url 'https://github.com/Versent/saml2aws/releases/download/v2.24.0/saml2aws_2.24.0_linux_amd64.tar.gz'
    sha256 'f5e0dd74b4ed397e9ec354b386e27aee130c1ee1c14f6273f458d729718cfd36'
  end

  depends_on :arch => :x86_64

  def install
    bin.install 'saml2aws'
  end

  test do
    system "#{bin}/saml2aws"
  end
end
