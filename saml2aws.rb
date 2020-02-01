require 'formula'

class Saml2aws < Formula
  homepage 'https://github.com/versent/saml2aws'
  version '2.22.1'
  if OS.mac?
    url 'https://github.com/Versent/saml2aws/releases/download/v2.22.1/saml2aws_2.22.1_darwin_amd64.tar.gz'
    sha256 '6eb89894abaff85fb7d36a7f8e960b0277f764149254961406c9ed0d86a911eb'
  elsif OS.linux?
    url 'https://github.com/Versent/saml2aws/releases/download/v2.22.1/saml2aws_2.22.1_linux_amd64.tar.gz'
    sha256 '03a70142417a34c9276cdc6f3cbb645c7f151387d32b0c3594bbd238a89190ee'
  end

  depends_on :arch => :x86_64

  def install
    bin.install 'saml2aws'
  end

  test do
    system "#{bin}/saml2aws"
  end
end
