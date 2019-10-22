require 'formula'

class Saml2aws < Formula
  homepage 'https://github.com/versent/saml2aws'
  version '2.18.0'
  if OS.mac?
    url 'https://github.com/Versent/saml2aws/releases/download/v2.18.0/saml2aws_2.18.0_darwin_amd64.tar.gz'
    sha256 'c004c68f0ee0e616185d666af5f5ebb7a166859e9e6ca8fc33f1af0eb5c40846'
  elsif OS.linux?
    url 'https://github.com/Versent/saml2aws/releases/download/v2.18.0/saml2aws_2.18.0_linux_amd64.tar.gz'
    sha256 'f75364f86da7469875b16f50a7221941e7d9883aa6a66805cdc8cb70f8e5eb2f'
  end

  depends_on :arch => :x86_64

  def install
    bin.install 'saml2aws'
  end

  test do
    system "#{bin}/saml2aws"
  end
end
