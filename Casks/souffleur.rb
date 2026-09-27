cask "souffleur" do
  version "1.1.0"
  sha256 "2d9ec44676d1177686fedcb40a638eaa419255ef4eb048f98cc994ace33bc54d"

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
