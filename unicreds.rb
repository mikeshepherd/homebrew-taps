require 'formula'

class Unicreds < Formula
  homepage 'https://github.com/versent/unicreds'
  url 'https://github.com/Versent/unicreds/releases/download/v1.1.0/unicreds_1.1.0_darwin_x86_64.tgz'
  version '1.1.0'
  sha1 '8b56c1d0130191c509cdcbca6f866963eab68dac'

  depends_on :arch => :x86_64

  def install
    bin.install 'unicreds'
  end

  test do
    system "#{bin}/unicreds"
  end
end
