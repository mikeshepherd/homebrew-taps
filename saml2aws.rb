require 'formula'

class Saml2aws < Formula
  homepage 'https://github.com/versent/saml2aws'
  url 'https://github.com/Versent/saml2aws/releases/download/v2.3.0/saml2aws_2.3.0_darwin_amd64.tar.gz'
  version '2.3.0'
  sha256 '05fffe265827de01cf6e3a5d3089ef7bfc0de7011f851b02adc8ba6b0e67af85'

  depends_on :arch => :x86_64

  def install
    bin.install 'saml2aws'
  end

  test do
    system "#{bin}/saml2aws"
  end
end
