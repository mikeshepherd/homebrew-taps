require 'formula'

class Saml2aws < Formula
  homepage 'https://github.com/versent/saml2aws'
  url 'https://github.com/Versent/saml2aws/releases/download/v1.2.0/saml2aws_1.2.0_darwin_x86_64.tgz'
  version '1.2.0'
  sha256 'a29f2ef9deac3879b231d0346cde92b697b3e078eb35ef4ad35fef28dcd16512'

  depends_on :arch => :x86_64

  def install
    bin.install 'saml2aws'
  end

  test do
    system "#{bin}/saml2aws"
  end
end
