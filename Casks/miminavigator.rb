cask "miminavigator" do
  version "0.9.9.8.1"
  sha256 "7b601a6788c51d1a1177bbcd774b9b22154e2a406d3203b15929d15bf97229d9"

  url "https://github.com/senatov/MiMiNavigator/releases/download/v#{version}/MiMiNavigator-#{version}.dmg"
  name "MiMiNavigator"
  desc "Dual-panel file manager"
  homepage "https://github.com/senatov/MiMiNavigator"

  depends_on macos: :tahoe

  app "MiMiNavigator.app"

  zap trash: [
    "~/Library/Application Support/MiMiNavigator",
    "~/Library/Preferences/Senatov.MiMiNavigator.plist",
    "~/Library/Saved Application State/Senatov.MiMiNavigator.savedState",
  ]
end
