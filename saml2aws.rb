require 'formula'

class Saml2aws < Formula
  homepage 'https://github.com/versent/saml2aws'
  url 'https://github.com/Versent/saml2aws/releases/download/v1.3.1/saml2aws_1.3.1_darwin_amd64.tar.gz'
  version '1.3.1'
  sha512 'd80cc1fa8ea98742e6b22bb800db55a77cb4c296c3106404464e96d7bdf3f7b47bf980cfc1b816272b36ff4c1dc7de0604af31cbbd52c9e4beafe30c02ba1be4'

  depends_on :arch => :x86_64

  def install
    bin.install 'saml2aws'
  end

  test do
    system "#{bin}/saml2aws"
  end
end
