require 'formula'

class Unicreds < Formula
  homepage 'https://github.com/versent/unicreds'
  url 'https://github.com/Versent/unicreds/releases/download/v1.4.0/unicreds_1.4.0_darwin_x86_64.tgz'
  version '1.4.0'
  sha256 '34fe09adaed63b54dd6334447f0824a4d73957bcb473fd2c3b1b1eb015c2ebb0'

  depends_on :arch => :x86_64

  def install
    bin.install 'unicreds'
  end

  test do
    system "#{bin}/unicreds"
  end
end
