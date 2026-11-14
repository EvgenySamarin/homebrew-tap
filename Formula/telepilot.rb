class Telepilot < Formula
  desc "Lightweight, keyboard-driven Telegram AI Client & Skill Runner"
  homepage "https://github.com/EvgenySamarin/telepilot"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/EvgenySamarin/telepilot/releases/download/v0.2.0/telepilot_v0.2.0_darwin_arm64.tar.gz"
      sha256 "7f61a2ffbbf8fb2739a631a714f6533b6a9b4ee8471606416468838ab504574d"
    end

    on_intel do
      url "https://github.com/EvgenySamarin/telepilot/releases/download/v0.2.0/telepilot_v0.2.0_darwin_amd64.tar.gz"
      sha256 "3ac44e25a9866698bbcb0894a732d1ad363e7d51d2073aa5956fe98b468de9fb"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/EvgenySamarin/telepilot/releases/download/v0.2.0/telepilot_v0.2.0_linux_amd64.tar.gz"
      sha256 "267c6f0ab9add0e0a6c518537110a9c3c2364694e4ebac54361d5855b070f467"
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
