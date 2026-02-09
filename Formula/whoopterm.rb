class Whoopterm < Formula
  desc "WHOOP fitness dashboard for the terminal"
  homepage "https://github.com/idossha/whoopterm"
  url "https://github.com/idossha/whoopterm/archive/refs/tags/v1.1.0.tar.gz"
  sha256 "9bbbc711ef2e496d5ecb2dbaffe0b63f50363696c8e7dd2dcc70ab57ebb8ddda"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "whoopterm", shell_output("#{bin}/whoopterm --version")
  end
end
