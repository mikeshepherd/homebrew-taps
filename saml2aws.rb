require 'formula'

class Saml2aws < Formula
  homepage 'https://github.com/versent/saml2aws'
  url 'https://github.com/Versent/saml2aws/releases/download/v2.10.0/saml2aws_2.10.0_darwin_amd64.tar.gz'
  version '2.10.0'
  sha256 '515f905ebc73b684e3e68b0a30089bf99a0b1ef792c3de24547179778b9b2792'

  depends_on :arch => :x86_64

  def install
    bin.install 'saml2aws'
  end

  test do
    system "#{bin}/saml2aws"
  end
end
