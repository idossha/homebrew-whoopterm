class Whoopterm < Formula
  desc "WHOOP fitness dashboard for the terminal"
  homepage "https://github.com/idossha/whoopterm"
  url "https://github.com/idossha/whoopterm/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "79660cddd796025a515dd2b93556c3b289a886ce3611634b1f18fc141f25752b"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "whoopterm", shell_output("#{bin}/whoopterm --version")
  end
end
