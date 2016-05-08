require 'formula'

class Unicreds < Formula
  homepage 'https://github.com/versent/unicreds'
  url 'https://github.com/Versent/unicreds/releases/download/v1.2.0/unicreds_1.2.0_darwin_x86_64.tgz'
  version '1.2.0'
  sha1 '13cf982f0c19837bf6d4cb835e348971318b5dd6'

  depends_on :arch => :x86_64

  def install
    bin.install 'unicreds'
  end

  test do
    system "#{bin}/unicreds"
  end
end
