cask "beacon" do
  version "1.0.0"
  sha256 "e405aa3320b4ba00b6a431179a180aa0869f6a05933c1f96fca259544514a650"

  url "https://github.com/Avivhdr/beacon/releases/download/v#{version}/Beacon-#{version}.dmg"
  name "Beacon"
  desc "Menu bar app for GitHub notifications, reviews and your PRs"
  homepage "https://beacon-for-github.vercel.app"

  depends_on macos: ">= :sonoma"

  auto_updates true

  app "Beacon.app"

  zap trash: [
    "~/.config/beacon",
    "~/Library/Application Support/Beacon",
    "~/Library/Preferences/com.avivhadar.Beacon.plist",
  ]
end
