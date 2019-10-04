require 'formula'

class Saml2aws < Formula
  homepage 'https://github.com/versent/saml2aws'
  version '2.17.0'
  if OS.mac?
    url 'https://github.com/Versent/saml2aws/releases/download/v2.17.0/saml2aws_2.17.0_darwin_amd64.tar.gz'
    sha256 'd05d4d34c2fdf8ce2a24c3d128bfb2b01a486e381d62f44ef074f2e926ea283f'
  elsif OS.linux?
    url 'https://github.com/Versent/saml2aws/releases/download/v2.17.0/saml2aws_2.17.0_linux_amd64.tar.gz'
    sha256 'ac414b497f11d6783f0d0a9b16ea8c6ddd415a35c3c55482e6d7aaae52791a07'
  end

  depends_on :arch => :x86_64

  def install
    bin.install 'saml2aws'
  end

  test do
    system "#{bin}/saml2aws"
  end
end
