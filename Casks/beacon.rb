cask "beacon" do
  version "1.3.0"
  sha256 "a81e5779fffdd01abf29772bbded5bb4174fe65998043512cea84e1368f96346"

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
