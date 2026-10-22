cask "beacon" do
  version "1.1.0"
  sha256 "4b7af7b9fe9430312362fcc9fc1b6b9eb3d68ab7b5e3171fa170c4b5e006639a"

  url "https://github.com/Avivhdr/beacon/releases/download/v#{version}/Beacon-#{version}.dmg"
  name "Beacon"
  desc "Menu bar app for GitHub notifications, reviews and your PRs"
  homepage "https://beacon-for-github.vercel.app"

  depends_on macos: :sonoma

  auto_updates true

  app "Beacon.app"

  zap trash: [
    "~/.config/beacon",
    "~/Library/Application Support/Beacon",
    "~/Library/Preferences/com.avivhadar.Beacon.plist",
  ]
end
