require 'formula'

class Saml2aws < Formula
  homepage 'https://github.com/versent/saml2aws'
  url 'https://github.com/Versent/saml2aws/releases/download/v1.3.0/saml2aws_1.3.0_darwin_x86_64.tgz'
  version '1.3.0'
  sha256 '5fd3d9167c03c15a91a1a61708edb10d152bd12d5d151549a8d125fb0091fce9'

  depends_on :arch => :x86_64

  def install
    bin.install 'saml2aws'
  end

  test do
    system "#{bin}/saml2aws"
  end
end
