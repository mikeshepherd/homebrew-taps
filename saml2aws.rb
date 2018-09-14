require 'formula'

class Saml2aws < Formula
  homepage 'https://github.com/versent/saml2aws'
  url 'https://github.com/Versent/saml2aws/releases/download/v2.8.1/saml2aws_2.8.1_darwin_amd64.tar.gz'
  version '2.8.1'
  sha256 '3b60eb67d21d79bd6075d240c0d0e014499789ef4a54ddf4d867fb7d3ccc4850'

  depends_on :arch => :x86_64

  def install
    bin.install 'saml2aws'
  end

  test do
    system "#{bin}/saml2aws"
  end
end
