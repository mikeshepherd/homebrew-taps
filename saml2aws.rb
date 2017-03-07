require 'formula'

class Saml2aws < Formula
  homepage 'https://github.com/versent/saml2aws'
  url 'https://github.com/Versent/saml2aws/releases/download/v1.5.0/saml2aws_1.5.0_darwin_amd64.tar.gz'
  version '1.5.0'
  sha256 'ba3128dd942fd0cad820ac1fc7a183458b4882a369dd76058e33a1d40f0e7237'

  depends_on :arch => :x86_64

  def install
    bin.install 'saml2aws'
  end

  test do
    system "#{bin}/saml2aws"
  end
end
