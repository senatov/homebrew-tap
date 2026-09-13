# Homebrew Tap for MiMiNavigator

This tap distributes the notarized macOS release of
[MiMiNavigator](https://github.com/senatov/MiMiNavigator).

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
