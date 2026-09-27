cask "islet" do
  version "1.1.0"
  sha256 "9b0ea9a0ac874fa07f9e40f83560a3ad389bbcfe51d875f4a82d93cedfef5f40"

  url "https://github.com/ruben4reall/islet/releases/download/v#{version}/Islet-#{version}.dmg"
  name "Islet"
  desc "Dynamic Island for the MacBook notch"
  homepage "https://getislet.vercel.app/"

  livecheck do
    url "https://getislet.vercel.app/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :sonoma

  app "Islet.app"
  binary "#{appdir}/Islet.app/Contents/Helpers/islet"

  uninstall quit: "ch.rubencatalao.islet"

  zap trash: [
    "~/Library/Application Support/Islet",
    "~/Library/Caches/ch.rubencatalao.islet",
    "~/Library/HTTPStorages/ch.rubencatalao.islet",
    "~/Library/Preferences/ch.rubencatalao.islet.plist",
  ]
end
