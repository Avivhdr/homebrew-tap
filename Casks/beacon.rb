cask "beacon" do
  version "1.0.0"
  sha256 "26d2db1b5a5fd86eb29db567266a2f75aa981d4821640b1c351ae9aecbc42afc"

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
