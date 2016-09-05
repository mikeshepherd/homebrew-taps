require 'formula'

class Unicreds < Formula
  homepage 'https://github.com/versent/unicreds'
  url 'https://github.com/Versent/unicreds/releases/download/v1.5.0/unicreds_1.5.0_darwin_x86_64.tgz'
  version '1.5.0'
  sha256 '7d29df6dd88f4af1e4a08066e47514489cd9a6184445ed2990fcd7b1a18177ca'

  depends_on :arch => :x86_64

  def install
    bin.install 'unicreds'
  end

  test do
    system "#{bin}/unicreds"
  end
end
