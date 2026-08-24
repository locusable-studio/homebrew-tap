cask "here-island" do
  version "2026.8.24"
  sha256 "876431b4fe3dfcb249d386e97b49cd18d2434b1bb9a040beb29a6876ed061161"

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
