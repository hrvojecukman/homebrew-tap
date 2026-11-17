cask "toranj" do
  version "0.1.1"
  sha256 "f959d124acb23e55b8f4117ba572ac7dc8b7dcefec24557a0edbde57903fa90d"

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
