require 'formula'

class Saml2aws < Formula
  homepage 'https://github.com/versent/saml2aws'
  version '2.15.0'
  if OS.mac?
    url 'https://github.com/Versent/saml2aws/releases/download/v2.15.0/saml2aws_2.15.0_darwin_amd64.tar.gz'
    sha256 'fc6712c5d22e3aa074736621a58a6f0d115255692128870e91816019be39b19f'
  elsif OS.linux?
    url 'https://github.com/Versent/saml2aws/releases/download/v2.15.0/saml2aws_2.15.0_linux_amd64.tar.gz'
    sha256 'd4c717b49556a67e22f5e9c332a79ec02af86b7ee2f0eb452712b176db3d3647'
  end

  depends_on :arch => :x86_64

  def install
    bin.install 'saml2aws'
  end

  test do
    system "#{bin}/saml2aws"
  end
end
