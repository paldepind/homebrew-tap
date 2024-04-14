class Projectdo < Formula
  desc "Context-aware single-letter project commands to speed up your terminal workflow"
  homepage "https://github.com/paldepind/projectdo"
  url "https://github.com/paldepind/projectdo/archive/refs/tags/v0.2.0.tar.gz"
  sha256 "fd3930a408199d4aa61ee6bfa0f2266a481fc933c634b69631f2766d07d0f92b"
  license "GPL-3.0"
  head "https://github.com/paldepind/projectdo.git"

  def install
    bin.install "projectdo"
  end

  test do
    system "#{bin}/projectdo -v"
  end
end
