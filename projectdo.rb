class Projectdo < Formula
  desc "Context-aware single-letter project commands to speed up your terminal workflow"
  homepage "https://github.com/paldepind/projectdo"
  url "https://github.com/paldepind/projectdo/archive/refs/tags/v0.2.3.tar.gz"
  sha256 "0e39ed5b01b37d28331037fe1b07329ec50868123e98a8d7ce5131ced9ab2cc2"
  license "GPL-3.0"
  head "https://github.com/paldepind/projectdo.git"

  def install
    bin.install "projectdo"
  end

  test do
    system "#{bin}/projectdo" "-v"
  end
end
