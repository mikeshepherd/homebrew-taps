require 'formula'

class Saml2aws < Formula
  homepage 'https://github.com/versent/saml2aws'
  version '2.14.0'
  if OS.mac?
    url 'https://github.com/Versent/saml2aws/releases/download/v2.14.0/saml2aws_2.14.0_darwin_amd64.tar.gz'
    sha256 'ca5b903eb0786c73d8f28627687841cba70056a2b56556105c04b4405b06d288'
  elsif OS.linux?
    url 'https://github.com/Versent/saml2aws/releases/download/v2.14.0/saml2aws_2.14.0_linux_amd64.tar.gz'
    sha256 'd96b420ae12b4f8d9506cb1cfb3c53ee55e8a3fea4d5eb65c89adac8a6710cf4'
  end

  depends_on :arch => :x86_64

  def install
    bin.install 'saml2aws'
  end

  test do
    system "#{bin}/saml2aws"
  end
end
