require 'formula'

class Saml2aws < Formula
  homepage 'https://github.com/versent/saml2aws'
  version '2.19.0'
  if OS.mac?
    url 'https://github.com/Versent/saml2aws/releases/download/v2.19.0/saml2aws_2.19.0_darwin_amd64.tar.gz'
    sha256 '775bcf7583d2293736c7bdb69a74dc32c6e8a999547a0628efb9e459fa32a907'
  elsif OS.linux?
    url 'https://github.com/Versent/saml2aws/releases/download/v2.19.0/saml2aws_2.19.0_linux_amd64.tar.gz'
    sha256 'b64e0be3ba9fc398572f37f926cd8ef346eff7572c909eb450f759f371416506'
  end

  depends_on :arch => :x86_64

  def install
    bin.install 'saml2aws'
  end

  test do
    system "#{bin}/saml2aws"
  end
end
