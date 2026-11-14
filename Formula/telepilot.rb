class Telepilot < Formula
  desc "Lightweight, keyboard-driven Telegram AI Client & Skill Runner"
  homepage "https://github.com/EvgenySamarin/telepilot"
  version "0.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/EvgenySamarin/telepilot/releases/download/v0.3.0/telepilot_v0.3.0_darwin_arm64.tar.gz"
      sha256 "4f6eb1c79517262c6a9c9f96718b47e70abfb4e3093f50dfb8b055d29d300303"
    end

    on_intel do
      url "https://github.com/EvgenySamarin/telepilot/releases/download/v0.3.0/telepilot_v0.3.0_darwin_amd64.tar.gz"
      sha256 "2b9e97dbddf52992c0ed9ada58a597cfbb7821c802df468bf28aaa74f14a00fe"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/EvgenySamarin/telepilot/releases/download/v0.3.0/telepilot_v0.3.0_linux_amd64.tar.gz"
      sha256 "06bc9618b40bfee406a05709c25c8e6dd3457d542fbe6222e5b4409c818ff786"
    end
  end

  def install
    bin.install "telepilot"
    bin.install "tgp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/telepilot --version")
    assert_predicate bin/"tgp", :exist?
  end
end
