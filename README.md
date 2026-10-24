# Homebrew Tap for MiMiNavigator

This tap distributes the notarized macOS release of
[MiMiNavigator](https://github.com/senatov/MiMiNavigator).

**v0.9.1.2 is the last release for macOS 26. Future releases require macOS 27 or newer.** The cask's macOS requirement is read from each release DMG before the tap update is published.

## Install

```zsh
brew install --cask senatov/tap/miminavigator
```

To install unattended without replacing a newer copy already present in
`/Applications`, use the version-aware installer:

```zsh
brew tap senatov/tap
"$(brew --repo senatov/tap)/scripts/install-miminavigator"
```

The installer compares the cask version with `CFBundleShortVersionString` from
the installed application. It only replaces the application when the cask is
newer; equal or older cask versions are treated as a successful no-op.
For macOS 27 releases, it checks the host OS before Homebrew starts installing
and exits without replacing the app on macOS 26. For macOS 26, download the
final compatible [v0.9.1.2 release](https://github.com/senatov/MiMiNavigator/releases/tag/v0.9.1.2).

## Upgrade

```zsh
"$(brew --repo senatov/tap)/scripts/install-miminavigator"
```

## Uninstall

```zsh
brew uninstall --cask miminavigator
```

To remove application support files and preferences as well:

```zsh
brew uninstall --cask --zap miminavigator
```
