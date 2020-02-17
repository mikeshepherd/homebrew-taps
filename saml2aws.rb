require 'formula'

class Saml2aws < Formula
  homepage 'https://github.com/versent/saml2aws'
  version '2.23.0'
  if OS.mac?
    url 'https://github.com/Versent/saml2aws/releases/download/v2.23.0/saml2aws_2.23.0_darwin_amd64.tar.gz'
    sha256 '1eb0d1bf701d4ef37c409441f07b1ef4b53b2de3851c99b27f90708ba17b45ba'
  elsif OS.linux?
    url 'https://github.com/Versent/saml2aws/releases/download/v2.23.0/saml2aws_2.23.0_linux_amd64.tar.gz'
    sha256 '6cefaea1430e2ca0a1df4493c9f8ffe86436db826319998ff215c6331f0333dc'
  end

  depends_on :arch => :x86_64

  def install
    bin.install 'saml2aws'
  end

  test do
    system "#{bin}/saml2aws"
  end
end
