cask "islet" do
  version "1.2.0"
  sha256 "4a273d20e2459eb6acc8ddb2816fc2263b93b69e58ce3ae878e71329284acfc8"

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
