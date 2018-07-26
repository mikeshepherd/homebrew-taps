require 'formula'

class Saml2aws < Formula
  homepage 'https://github.com/versent/saml2aws'
  url 'https://github.com/Versent/saml2aws/releases/download/v2.7.0/saml2aws_2.7.0_darwin_amd64.tar.gz'
  version '2.7.0'
  sha256 '70e210cbe1ded47db7237a2dee0bc28eee393362563e357d3b6fe9429c3a2f6b'

  depends_on :arch => :x86_64

  def install
    bin.install 'saml2aws'
  end

  test do
    system "#{bin}/saml2aws"
  end
end
