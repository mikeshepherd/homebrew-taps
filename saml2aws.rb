require 'formula'

class Saml2aws < Formula
  homepage 'https://github.com/versent/saml2aws'
  url 'https://github.com/Versent/saml2aws/releases/download/v2.6.1/saml2aws_2.6.1_darwin_amd64.tar.gz'
  version '2.6.1'
  sha256 '7fa6fbfc8096e99951cad0113271da5521c57af65a79802b30f59d740b05fd3b'

  depends_on :arch => :x86_64

  def install
    bin.install 'saml2aws'
  end

  test do
    system "#{bin}/saml2aws"
  end
end
