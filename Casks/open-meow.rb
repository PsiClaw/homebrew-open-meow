cask "open-meow" do
  version "0.0.2"
  sha256 "01c18e765e6acd19d3dfad42b1ead4fe406680fe65f9f897b925c54d3d6c13bc"

  url "https://github.com/PsiClaw/open-meow/releases/download/v#{version}/OpenMeow-v#{version}.dmg"
  name "OpenMeow"
  desc "Elegant Cat desktop companion shell for macOS"
  homepage "https://github.com/PsiClaw/open-meow"

  depends_on macos: ">= :sonoma"

  app "OpenMeow.app"

  zap trash: [
    "~/Library/Preferences/ai.psiclaw.openmeow.plist",
    "~/Library/Application Support/open-meow",
  ]
end
