require 'formula'

class Saml2aws < Formula
  homepage 'https://github.com/versent/saml2aws'
  url 'https://github.com/Versent/saml2aws/releases/download/v1.8.1/saml2aws_1.8.1_darwin_amd64.tar.gz'
  version '1.8.1'
  sha256 '5025f592f8d2807fe9396bd5237824a9a1bcbe0ac8a5ee65b979ad06c0dc4feb'

  depends_on :arch => :x86_64

  def install
    bin.install 'saml2aws'
  end

  test do
    system "#{bin}/saml2aws"
  end
end
