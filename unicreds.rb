require 'formula'

class Unicreds < Formula
  homepage 'https://github.com/versent/unicreds'
  url 'https://github.com/Versent/unicreds/releases/download/1.7.0/unicreds_1.7.0_darwin_amd64.tar.gz'
  version '1.7.0'
  sha256 '898b6f68300782b2b838f024a4ddf2890fc28c828ecc9fed7ded9cd66bcfde9c'

  depends_on :arch => :x86_64

  def install
    bin.install 'unicreds'
  end

  test do
    system "#{bin}/unicreds"
  end
end
