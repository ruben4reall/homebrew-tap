cask "postern" do
  version "0.2.0"
  sha256 "fe4eb0df59567e6438f4ce9bc4412f14ff573ed8297ad2bbc5be06e0c172e44b"

  url "https://github.com/ruben4reall/postern/releases/download/v#{version}/Postern-#{version}.dmg"
  name "Postern"
  desc "MCP server for Proton Mail Bridge, guarded by Touch ID"
  homepage "https://getpostern.vercel.app/"

  livecheck do
    url "https://getpostern.vercel.app/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :tahoe

  app "Postern.app"

  uninstall launchctl: "ch.rubencatalao.postern.core",
            quit:      "ch.rubencatalao.postern"

  zap trash: [
    "~/Library/Caches/ch.rubencatalao.postern",
    "~/Library/Containers/ch.rubencatalao.postern",
    "~/Library/Containers/ch.rubencatalao.postern.parser",
    "~/Library/HTTPStorages/ch.rubencatalao.postern",
    "~/Library/Preferences/ch.rubencatalao.postern.plist",
  ]
end
