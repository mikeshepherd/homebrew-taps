require 'formula'

class Saml2aws < Formula
  homepage 'https://github.com/versent/saml2aws'
  url 'https://github.com/Versent/saml2aws/releases/download/v2.4.0/saml2aws_2.4.0_darwin_amd64.tar.gz'
  version '2.4.0'
  sha256 'c41a928ee3d15daaaefb7076b7cf5a885c420269858b621050c04a933250b903'

  depends_on :arch => :x86_64

  def install
    bin.install 'saml2aws'
  end

  test do
    system "#{bin}/saml2aws"
  end
end
