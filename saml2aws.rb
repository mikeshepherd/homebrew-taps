require 'formula'

class Saml2aws < Formula
  homepage 'https://github.com/versent/saml2aws'
  version '2.27.0'
  if OS.mac?
    url "https://github.com/Versent/saml2aws/releases/download/v#{version}/saml2aws_#{version}_darwin_amd64.tar.gz"
    sha256 '8002b745a5066faf24e8143f4e56005a6f866db43e9e62a1ebdbb805bccffe29'
  elsif OS.linux?
    url "https://github.com/Versent/saml2aws/releases/download/v#{version}/saml2aws_#{version}_linux_amd64.tar.gz"
    sha256 'b63b1566d2b5bfed2c4c2b912b4a3394ea1859ab40b6c52a5cf3c475fb1315f9'
  end

  depends_on :arch => :x86_64

  def install
    bin.install 'saml2aws'
  end

  test do
    system "#{bin}/saml2aws"
  end
end
