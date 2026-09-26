cask "pli" do
  version "1.0.0"
  sha256 "506921b0ae25cf5a7de48dadc848e0da33b5d86954e0a951c7b407e6ed3c23d5"

  url "https://github.com/ruben4reall/pli/releases/download/v#{version}/Pli-#{version}.dmg"
  name "Pli"
  desc "Frosted-glass fold animation that follows the laptop lid"
  homepage "https://getpli.vercel.app/"

  livecheck do
    url "https://getpli.vercel.app/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :tahoe

  app "Pli.app"

  uninstall quit: "ch.rubencatalao.pli"

  zap trash: [
    "~/Library/Application Support/Pli",
    "~/Library/Caches/ch.rubencatalao.pli",
    "~/Library/HTTPStorages/ch.rubencatalao.pli",
    "~/Library/Preferences/ch.rubencatalao.pli.plist",
    "~/Library/Saved Application State/ch.rubencatalao.pli.savedState",
  ]
end
