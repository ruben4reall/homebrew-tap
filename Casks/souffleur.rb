cask "souffleur" do
  version "1.3.1"
  sha256 "bb346660af5d128212b2eb187f691702f399bb4cfa84edb1a785d1a462538221"

  url "https://github.com/ruben4reall/souffleur/releases/download/v#{version}/Souffleur-#{version}.dmg"
  name "Souffleur"
  desc "Teleprompter in the MacBook notch that follows your voice"
  homepage "https://getsouffleur.vercel.app/"

  livecheck do
    url "https://getsouffleur.vercel.app/appcast.xml"
    strategy :sparkle, &:short_version
  end

  deprecate! date: "2026-10-03", because: "is now the prompter of Col", replacement_cask: "col"

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
