# brew-better-search
Search for and install packages in Brew with a single command.

# Installation

I need to make this into a formula, but haven't got around to it yet. Here's how you install it manually:

1. Download `brew-bbs.rb`.
2. `cd` to the folder where `brew-bbs.rb` is located.
3. Make it executable by running `chmod +x brew-bbs.rb`.
4. Move that file to your `$PATH`, by default, I believe this is `usr/local/bin`.

# Usage

brew-better-search is an external command for brew that can be invoked by calling: 

`brew bbs [your search term]`

# Example

Let's say you wanted to install Google Chrome via Brew. 

**The Old Way**

First, run `brew search chrome`, which outputs:

```
chrome-cli                                chromedriver
Caskroom/cask/chrome-devtools             Caskroom/versions/dmm-player-for-chrome
Caskroom/cask/chrome-remote-desktop-host  Caskroom/versions/google-chrome-beta
Caskroom/cask/epichrome                   Caskroom/versions/google-chrome-canary
Caskroom/cask/google-chrome               Caskroom/versions/google-chrome-dev
Caskroom/cask/mkchromecast
```

From that list, what we want is `Caskroom/cask/google-chrome`.

Copy that to your clipboard and run: `brew install Caskroom/cask/google-chrome`.

**With BBS**

Run `brew bbs chrome`, which shows you the following menu:

```
1. chrome-cli
2. chromedriver
3. Caskroom/cask/chrome-devtools
4. Caskroom/cask/chrome-remote-desktop-host
5. Caskroom/cask/epichrome
6. Caskroom/cask/google-chrome
7. Caskroom/cask/mkchromecast
8. Caskroom/versions/dmm-player-for-chrome
9. Caskroom/versions/google-chrome-beta
10. Caskroom/versions/google-chrome-canary
11. Caskroom/versions/google-chrome-dev

Enter the number of the package you want to install:
```
Because we want `Caskroom/cask/google-chrome`, we'll type `6` and then press `enter`. That's it!
