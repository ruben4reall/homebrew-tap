cask "postern" do
  version "0.1.1"
  sha256 "244db92bfe33c7281f56221d18ee64a0225b750e58fe2a091151b62ef5d09952"

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
