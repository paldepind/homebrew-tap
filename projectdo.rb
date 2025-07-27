class Projectdo < Formula
  desc "Context-aware single-letter project commands to speed up your terminal workflow"
  homepage "https://github.com/paldepind/projectdo"
  url "https://github.com/paldepind/projectdo/archive/refs/tags/v0.2.1.tar.gz"
  sha256 "329b8abf29e19dc7ab524277974d011e72383db2dace0c7baccf8b201a669b4a"
  license "GPL-3.0"
  head "https://github.com/paldepind/projectdo.git"

  def install
    bin.install "projectdo"
  end

  test do
    system "#{bin}/projectdo" "-v"
  end
end
