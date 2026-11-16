cask "miminavigator" do
  version "0.9.1.8"
  sha256 "454119a39c3a150696b02a06f1b22047a3692d9e05dc2fcf10b4d9425a19079c"

  url "https://github.com/senatov/MiMiNavigator/releases/download/v#{version}/MiMiNavigator-#{version}.dmg"
  name "MiMiNavigator"
  desc "Dual-panel file manager"
  homepage "https://github.com/senatov/MiMiNavigator"

  depends_on macos: :golden_gate

  app "MiMiNavigator.app"

  zap trash: [
    "~/Library/Application Support/MiMiNavigator",
    "~/Library/Preferences/Senatov.MiMiNavigator.plist",
    "~/Library/Saved Application State/Senatov.MiMiNavigator.savedState",
  ]
end
