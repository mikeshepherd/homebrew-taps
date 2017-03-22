require 'formula'

class Unicreds < Formula
  homepage 'https://github.com/versent/unicreds'
  url 'https://github.com/Versent/unicreds/releases/download/1.5.1/unicreds_1.5.1_darwin_amd64.tar.gz'
  version '1.5.1'
  sha256 'ad1cd39d4cd0dfafb4d1a253c438c8c1ab8179fedf633c83184bd5bce28d57ce'

  depends_on :arch => :x86_64

  def install
    bin.install 'unicreds'
  end

  test do
    system "#{bin}/unicreds"
  end
end
