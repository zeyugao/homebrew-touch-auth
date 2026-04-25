# homebrew-touch-auth

Homebrew tap for [touch-auth](https://github.com/zeyugao/touch-auth).

## Install

```sh
brew tap zeyugao/touch-auth
brew install touch-auth
brew services start touch-auth
```

## What This Repo Contains

* `Formula/touch-auth.rb` for the `touch-auth` formula
* the Homebrew-facing metadata and release archive checksum

## Maintenance

This tap is intended to be updated automatically from releases published in the main repository:

https://github.com/zeyugao/touch-auth

After a GitHub release is published there, the release workflow downloads the release asset, recalculates `sha256`, updates `Formula/touch-auth.rb`, and pushes the change here.

If you need to make a manual formula fix, keep it limited to tap-specific packaging concerns. Source changes and release assets should be handled in the main repository.
