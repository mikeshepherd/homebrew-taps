require 'formula'

class Saml2aws < Formula
  homepage 'https://github.com/versent/saml2aws'
  url 'https://github.com/Versent/saml2aws/releases/download/v1.8.2/saml2aws_1.8.2_darwin_amd64.tar.gz'
  version '1.8.2'
  sha256 '3e31717ae8947ae423a07b05dbfb0e77bb9f1670a9757fc66cc4c74d1deb0523'

  depends_on :arch => :x86_64

  def install
    bin.install 'saml2aws'
  end

  test do
    system "#{bin}/saml2aws"
  end
end
