require 'formula'

class Unicreds < Formula
  homepage 'https://github.com/versent/unicreds'
  url 'https://github.com/Versent/unicreds/releases/download/v1.4.0/unicreds_1.4.0_darwin_x86_64.tgz'
  version '1.4.0'
  sha1 '70bfdfd9491cec74916d44d29398d0650292fd1e'

  depends_on :arch => :x86_64

  def install
    bin.install 'unicreds'
  end

  test do
    system "#{bin}/unicreds"
  end
end
