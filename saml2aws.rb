require 'formula'

class Saml2aws < Formula
  homepage 'https://github.com/versent/saml2aws'
  version '2.25.0'
  if OS.mac?
    url 'https://github.com/Versent/saml2aws/releases/download/v2.25.0/saml2aws_2.25.0_darwin_amd64.tar.gz'
    sha256 '979c2a4897397dd29b99347fe4e4accab9cb8cb697f94f4baf1336dfd59b380c'
  elsif OS.linux?
    url 'https://github.com/Versent/saml2aws/releases/download/v2.25.0/saml2aws_2.25.0_linux_amd64.tar.gz'
    sha256 'f3bb72c53bdd89f53c366daf16297daf5f6b0df60935a80fe190e1026de5b974'
  end

  depends_on :arch => :x86_64

  def install
    bin.install 'saml2aws'
  end

  test do
    system "#{bin}/saml2aws"
  end
end
