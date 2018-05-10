require 'formula'

class Saml2aws < Formula
  homepage 'https://github.com/versent/saml2aws'
  url 'https://github.com/Versent/saml2aws/releases/download/v2.4.2/saml2aws_2.4.2_darwin_amd64.tar.gz'
  version '2.4.2'
  sha256 '3d7f44d83b3a30c1035a2bd6e661f62bf399dd62f5a0ade2ee152159a858f60d'

  depends_on :arch => :x86_64

  def install
    bin.install 'saml2aws'
  end

  test do
    system "#{bin}/saml2aws"
  end
end
