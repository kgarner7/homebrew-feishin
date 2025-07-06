# homebrew-feishin

This is a [Homebrew](https://brew.sh/) tap (third-party repository) for [Feishin](https://github.com/jeffvli/feishin).

## Usage

To install Feishin with Homebrew run:

```sh
brew tap kgarner7/feishin
brew install --no-quarantine feishin
```

The `--no-quarantine` flag is important because Feishin is distributed without having been [notarized](https://developer.apple.com/documentation/security/notarizing-macos-software-before-distribution), and therefore will not run without this.

You should also include it when upgrading in future:

```
brew upgrade --no-quarantine feishin
```

Heavily adapted from https://github.com/supersonic-app/homebrew-supersonic and this comment: https://github.com/jeffvli/feishin/issues/818#issuecomment-2451888885