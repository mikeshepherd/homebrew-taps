require 'formula'

class Saml2aws < Formula
  homepage 'https://github.com/versent/saml2aws'
  url 'https://github.com/Versent/saml2aws/releases/download/v2.1.0/saml2aws_2.1.0_darwin_amd64.tar.gz'
  version '2.1.0'
  sha256 'b4e227f8bb336c76e3aae944ab83f57626887db417017889dfdc428eb18e745c'

  depends_on :arch => :x86_64

  def install
    bin.install 'saml2aws'
  end

  test do
    system "#{bin}/saml2aws"
  end
end
