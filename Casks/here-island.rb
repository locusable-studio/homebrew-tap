cask "here-island" do
  version "2026.8.20.1"
  sha256 "30082695d46ea2ab24eace6c3e67f4c5de21576eea5b0c078016f0c70316bee4"

  url "https://github.com/locusable-studio/HereIsland/releases/download/v#{version}/HereIsland-#{version}.dmg",
      verified: "github.com/locusable-studio/HereIsland/"
  name "Here Island"
  desc "Mini music player for the MacBook notch"
  homepage "https://locusable.com/here-island/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :tahoe

  app "Here Island.app"

  uninstall quit: "com.locusable.hereisland"

  zap trash: [
    "~/Library/Caches/com.locusable.hereisland",
    "~/Library/HTTPStorages/com.locusable.hereisland",
    "~/Library/Preferences/com.locusable.hereisland.plist",
    "~/Library/Saved Application State/com.locusable.hereisland.savedState",
  ]
end
