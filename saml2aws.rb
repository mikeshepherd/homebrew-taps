require 'formula'

class Saml2aws < Formula
  homepage 'https://github.com/versent/saml2aws'
  version '2.21.0'
  if OS.mac?
    url 'https://github.com/Versent/saml2aws/releases/download/v2.21.0/saml2aws_2.21.0_darwin_amd64.tar.gz'
    sha256 '620e52fc3914324f244f80a313c2e19b50689bfb2248ec9ef731fae352a89e35'
  elsif OS.linux?
    url 'https://github.com/Versent/saml2aws/releases/download/v2.21.0/saml2aws_2.21.0_linux_amd64.tar.gz'
    sha256 'e57bd1f5f4e49447d9d4ad7862d3c43d62b3379605296a6631496a915f2be067'
  end

  depends_on :arch => :x86_64

  def install
    bin.install 'saml2aws'
  end

  test do
    system "#{bin}/saml2aws"
  end
end
