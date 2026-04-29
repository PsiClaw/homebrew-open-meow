cask "open-meow" do
  version "0.10.0"
  sha256 "c943f27bb891e9ea8ee88a72ac65579508ede3b78ad08b0e99ece822966ca17b"

  url "https://github.com/OpenCoven/open-meow-downloads/releases/download/v#{version}/OpenMeow-v#{version}.dmg"
  name "OpenMeow"
  desc "Elegant Cat desktop companion shell for macOS"
  homepage "https://github.com/OpenCoven/open-meow-downloads"

  depends_on macos: ">= :sonoma"

  app "OpenMeow.app"

  zap trash: [
    "~/Library/Preferences/ai.psiclaw.openmeow.plist",
    "~/Library/Application Support/open-meow",
  ]
end
