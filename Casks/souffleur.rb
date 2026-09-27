cask "souffleur" do
  version "1.2.0"
  sha256 "40afa3f4fdccee44df5ac5e6c3432e4c28dae81c73718b6f042dba8d7172b232"

  url "https://github.com/ruben4reall/souffleur/releases/download/v#{version}/Souffleur-#{version}.dmg"
  name "Souffleur"
  desc "Teleprompter in the MacBook notch that follows your voice"
  homepage "https://getsouffleur.vercel.app/"

  livecheck do
    url "https://getsouffleur.vercel.app/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :sonoma

  app "Souffleur.app"

  uninstall quit: "ch.rubencatalao.souffleur"

  zap trash: [
    "~/Library/Application Support/Souffleur",
    "~/Library/Caches/ch.rubencatalao.souffleur",
    "~/Library/HTTPStorages/ch.rubencatalao.souffleur",
    "~/Library/Preferences/ch.rubencatalao.souffleur.plist",
    "~/Library/Saved Application State/ch.rubencatalao.souffleur.savedState",
  ]
end
