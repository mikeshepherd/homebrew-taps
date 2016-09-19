require 'formula'

class Saml2aws < Formula
  homepage 'https://github.com/versent/saml2aws'
  url 'https://github.com/Versent/saml2aws/releases/download/v1.2.0/saml2aws_1.2.0_darwin_x86_64.tgz'
  version '1.2.0'
  sha256 '77217c98ad11ff3f720af313647e4437120a59c901cb633a256e3b53950dd203'

  depends_on :arch => :x86_64

  def install
    bin.install 'saml2aws'
  end

  test do
    system "#{bin}/saml2aws"
  end
end
