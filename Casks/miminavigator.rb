cask "miminavigator" do
  version "0.9.1"
  sha256 "436315c4066ed73dba86b1ee2396519a65014d77f814ebfa482e71ebdebe6b8e"

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
