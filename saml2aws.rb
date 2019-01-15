require 'formula'

class Saml2aws < Formula
  homepage 'https://github.com/versent/saml2aws'
  version '2.12.0'
  if OS.mac?
    url 'https://github.com/Versent/saml2aws/releases/download/v2.12.0/saml2aws_2.12.0_darwin_amd64.tar.gz'
    sha256 '19061c92f1673586a20d192be2295ea5a78902ef18ded2feaa2ca1fd117e3664'
  elsif OS.linux?
    url 'https://github.com/Versent/saml2aws/releases/download/v2.12.0/saml2aws_2.12.0_linux_amd64.tar.gz'
    sha256 '43f904b8ecb3b7e6c6cb110870f0ddcc4311e628dadfe2ba37788385828662c5'
  end

  depends_on :arch => :x86_64

  def install
    bin.install 'saml2aws'
  end

  test do
    system "#{bin}/saml2aws"
  end
end
