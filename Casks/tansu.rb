cask "tansu" do
  version "1.0.1"
  sha256 "0dea8f9ec4f17c3ab2cb6adaaeea5bb0d274bba593a50521da951c2b57ffdcb6"

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
