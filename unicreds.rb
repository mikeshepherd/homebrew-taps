require 'formula'

class Unicreds < Formula
  homepage 'https://github.com/versent/unicreds'
  url 'https://github.com/Versent/unicreds/releases/download/v1.2.1/unicreds_1.2.1_darwin_x86_64.tgz'
  version '1.2.1'
  sha1 'e31dc23f26ca01cb5f7d7ac4d401daf69ac96fcd'

  depends_on :arch => :x86_64

  def install
    bin.install 'unicreds'
  end

  test do
    system "#{bin}/unicreds"
  end
end
