cask "miminavigator" do
  version "0.9.1.8"
  sha256 "cf7a7dbd598898903695e66c449410b4df89a8dc924b35b77ffb9bc8cc550299"

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
