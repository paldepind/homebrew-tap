class Projectdo < Formula
  desc "Context-aware single-letter project commands to speed up your terminal workflow"
  homepage "https://github.com/paldepind/projectdo"
  url "https://github.com/paldepind/projectdo/archive/refs/tags/v0.2.0.tar.gz"
  sha256 "fd3930a408199d4aa61ee6bfa0f2266a481fc933c634b69631f2766d07d0f92b"
  head "https://github.com/paldepind/projectdo.git"
  license "GPL-3.0"

  # depends_on "cmake" => :build

  def install
    # ENV.deparallelize  # if your formula fails when building in parallel
    # Remove unrecognized options if warned by configure
    # https://rubydoc.brew.sh/Formula.html#std_configure_args-instance_method
    # system "./configure", *std_configure_args, "--disable-silent-rules"
    # system "cmake", "-S", ".", "-B", "build", *std_cmake_args
    bin.install "projectdo"
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test projectdo`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "#{bin}/projectdo -v"
  end
end
