require 'formula'

class Saml2aws < Formula
  homepage 'https://github.com/versent/saml2aws'
  url 'https://github.com/Versent/saml2aws/releases/download/v1.0.0/saml2aws_1.0.0_darwin_x86_64.tgz'
  version '1.0.0'
  sha256 'e0260efe0f96e130845c89e96c1e308305cb2698804686af12a90121dc506fda'

  depends_on :arch => :x86_64

  def install
    bin.install 'saml2aws'
  end

  test do
    system "#{bin}/saml2aws"
  end
end
