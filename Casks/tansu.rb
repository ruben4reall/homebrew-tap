cask "tansu" do
  version "1.0.0"
  sha256 "49fb098bca0e40e339e967fd98a9ee7da42c65d7ef266d1f168208c42aa62704"

  url "https://github.com/ruben4reall/tansu/releases/download/v#{version}/Tansu-#{version}.dmg"
  name "Tansu"
  desc "Menu bar organizer that sorts icons into drawers"
  homepage "https://gettansu.vercel.app/"

  livecheck do
    url "https://gettansu.vercel.app/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :tahoe

  app "Tansu.app"

  uninstall quit: "ch.rubencatalao.tansu"

  zap trash: [
    "~/Library/Caches/ch.rubencatalao.tansu",
    "~/Library/HTTPStorages/ch.rubencatalao.tansu",
    "~/Library/Preferences/ch.rubencatalao.tansu.debug.plist",
    "~/Library/Preferences/ch.rubencatalao.tansu.plist",
    "~/Library/Saved Application State/ch.rubencatalao.tansu.savedState",
  ]
end
