cask "tiroir" do
  version "1.1.0"
  sha256 "e007a9178983dedbf5b74395822d6a3191ea5b97e0242b87a97f32e8d9228c66"

  url "https://github.com/ruben4reall/tiroir/releases/download/v#{version}/Tiroir-#{version}.dmg"
  name "Tiroir"
  desc "Menu bar organizer that sorts icons into drawers"
  homepage "https://gettiroir.vercel.app/"

  livecheck do
    url "https://gettiroir.vercel.app/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :tahoe

  app "Tiroir.app"

  uninstall quit: "ch.rubencatalao.tiroir"

  zap trash: [
    "~/Library/Caches/ch.rubencatalao.tiroir",
    "~/Library/HTTPStorages/ch.rubencatalao.tiroir",
    "~/Library/Preferences/ch.rubencatalao.tiroir.debug.plist",
    "~/Library/Preferences/ch.rubencatalao.tiroir.plist",
    "~/Library/Saved Application State/ch.rubencatalao.tiroir.savedState",
  ]
end
