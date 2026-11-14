class Telepilot < Formula
  desc "Lightweight, keyboard-driven Telegram AI Client & Skill Runner"
  homepage "https://github.com/EvgenySamarin/telepilot"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/EvgenySamarin/telepilot/releases/download/v0.1.0/telepilot_v0.1.0_darwin_arm64.tar.gz"
      sha256 "53b5219b025b1c7ae743cf881a42e28ff1ecda2a3c8640a4480d6e1a7bedad3a"
    end

    on_intel do
      url "https://github.com/EvgenySamarin/telepilot/releases/download/v0.1.0/telepilot_v0.1.0_darwin_amd64.tar.gz"
      sha256 "a41f02cd59452218953a398482bbcd751ddf6d7466d4477a73a5fcd8c58ec8ed"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/EvgenySamarin/telepilot/releases/download/v0.1.0/telepilot_v0.1.0_linux_amd64.tar.gz"
      sha256 "af457d01b61198590bc9218d7d17ec6c4e5b71168d5af2b0a6001689a8e9dbcc"
    end
  end

  def install
    bin.install "telepilot"
    bin.install "tgp"
  end

  test do
    assert_predicate bin/"telepilot", :exist?
    assert_predicate bin/"tgp", :exist?
  end
end
