require 'formula'

class Saml2aws < Formula
  homepage 'https://github.com/versent/saml2aws'
  url 'https://github.com/Versent/saml2aws/releases/download/v2.6.0/saml2aws_2.6.0_darwin_amd64.tar.gz'
  version '2.6.0'
  sha256 '03e80320578b3bd3a5e8e065d6884521cdc2e38b50dbc653da60843f96f34c59'

  depends_on :arch => :x86_64

  def install
    bin.install 'saml2aws'
  end

  test do
    system "#{bin}/saml2aws"
  end
end
