require 'formula'

class Saml2aws < Formula
  homepage 'https://github.com/versent/saml2aws'
  url 'https://github.com/Versent/saml2aws/releases/download/v1.1.0/saml2aws_1.1.0_darwin_x86_64.tgz'
  version '1.1.0'
  sha256 '914a243a10ecf5a48699c50c2891a2194fedc445aab9be3513d1d97d9a1dbc6f'

  depends_on :arch => :x86_64

  def install
    bin.install 'saml2aws'
  end

  test do
    system "#{bin}/saml2aws"
  end
end
