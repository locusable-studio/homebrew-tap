cask "here-island" do
  version "2026.9.22"
  sha256 "9ca16e570f73f7edce21687218a93b11793b24bb8193ec881eb7b78770a65c50"

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
