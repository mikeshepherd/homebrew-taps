require 'formula'

class Saml2aws < Formula
  homepage 'https://github.com/versent/saml2aws'
  url 'https://github.com/Versent/saml2aws/releases/download/v2.5.0/saml2aws_2.5.0_darwin_amd64.tar.gz'
  version '2.5.0'
  sha256 '614fd90f52d0ee3e9540b098660fe7d89cf48036e36c788e7575e960c327599a'

  depends_on :arch => :x86_64

  def install
    bin.install 'saml2aws'
  end

  test do
    system "#{bin}/saml2aws"
  end
end
