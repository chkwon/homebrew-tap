# chkwon's Homebrew Tap

A personal [Homebrew](https://brew.sh) tap publishing signed, notarized macOS releases of my apps.

## Apps

| Cask | App | Description |
|------|-----|-------------|
| `texforge` | [TeXForge](https://github.com/chkwon/TeXForge) | LaTeX editor with AI inline completion, a fork of TeXShop |
| `pdflaser` | [PDF Laser](https://github.com/chkwon/PDFLaser) | PDF slide presenter with laser pointer and pen markup |

## Install

```sh
brew install --cask chkwon/tap/texforge
brew install --cask chkwon/tap/pdflaser
```

Or tap the repository first, then install by cask name:

```sh
brew tap chkwon/tap
brew install --cask texforge
brew install --cask pdflaser
```

## Upgrade

```sh
brew update
brew upgrade --cask texforge
brew upgrade --cask pdflaser
```

## Uninstall

```sh
brew uninstall --cask texforge
brew uninstall --cask pdflaser
```
