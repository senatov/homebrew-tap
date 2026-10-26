cask "miminavigator" do
  version "0.9.1.3"
  sha256 "02fa929afb50089819c346c336fe1993f89eee08686f57f6a8304538817b68f6"

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
