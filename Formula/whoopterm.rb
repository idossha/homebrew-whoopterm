class Whoopterm < Formula
  desc "WHOOP fitness dashboard for the terminal"
  homepage "https://github.com/idossha/whoopterm"
  url "https://github.com/idossha/whoopterm/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "81978551c074ad75ca1c35ccbf4b024a7b6f7b5b0bf908aaac04d71ac9dc3be7"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "whoopterm", shell_output("#{bin}/whoopterm --version")
  end
end
