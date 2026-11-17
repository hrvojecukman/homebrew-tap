cask "toranj" do
  version "0.1.0"
  sha256 "e78406bd44f368212fa5aad60da33e36ad2c74080b3ff37bfc8a4ac5f41a3f1c"

  url "https://github.com/hrvojecukman/toranj/releases/download/v#{version}/Toranj_#{version}_aarch64.dmg"
  name "Toranj"
  desc "One window for all your coding agents"
  homepage "https://github.com/hrvojecukman/toranj"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on formula: "tmux"

  app "Toranj.app"

  zap trash: [
    "~/.local/share/toranj",
    "~/.local/state/toranj",
    "~/Library/Application Support/toranj",
    "~/Library/Logs/Toranj",
    "~/Library/WebKit/io.github.hrvojecukman.toranj",
  ]
end
