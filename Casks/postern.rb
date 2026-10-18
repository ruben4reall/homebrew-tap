cask "postern" do
  version "0.1.0"
  sha256 "03ece819fb961534fa2dd16492d853dfac5e3187254436ce5ab182fbd4965a89"

  url "https://github.com/ruben4reall/postern/releases/download/v#{version}/Postern-#{version}.dmg"
  name "Postern"
  desc "MCP server for Proton Mail Bridge, guarded by Touch ID"
  homepage "https://getpostern.vercel.app/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :tahoe

  app "Postern.app"

  uninstall launchctl: "ch.rubencatalao.postern.core",
            quit:      "ch.rubencatalao.postern"

  zap trash: [
    "~/Library/Containers/ch.rubencatalao.postern",
    "~/Library/Containers/ch.rubencatalao.postern.parser",
    "~/Library/Preferences/ch.rubencatalao.postern.plist",
  ]
end
