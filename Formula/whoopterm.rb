class Whoopterm < Formula
  desc "WHOOP fitness dashboard for the terminal"
  homepage "https://github.com/idossha/whoopterm"
  url "https://github.com/idossha/whoopterm/archive/refs/tags/v0.2.0.tar.gz"
  sha256 "8792ac6e067c8c89fd8444d43ab1c52eac12e7f849205459bc9cd15fc0f381fd"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "whoopterm", shell_output("#{bin}/whoopterm --version")
  end
end
