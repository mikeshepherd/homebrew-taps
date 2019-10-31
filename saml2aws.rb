require 'formula'

class Saml2aws < Formula
  homepage 'https://github.com/versent/saml2aws'
  version '2.19.0'
  if OS.mac?
    url 'https://github.com/Versent/saml2aws/releases/download/v2.19.0/saml2aws_2.19.0_darwin_amd64.tar.gz'
    sha256 'cb12832804f90d3fc08e7c51d0c8ed2228e44476321f4e79887a59521935ff1f'
  elsif OS.linux?
    url 'https://github.com/Versent/saml2aws/releases/download/v2.19.0/saml2aws_2.19.0_linux_amd64.tar.gz'
    sha256 'a7728e26c6379a3d0406f28286bd145a341a26b3840bc18bd0ce7ccb19419970'
  end

  depends_on :arch => :x86_64

  def install
    bin.install 'saml2aws'
  end

  test do
    system "#{bin}/saml2aws"
  end
end
