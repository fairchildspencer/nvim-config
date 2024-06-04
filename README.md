## Custom config for Neovim
Setup for web development using, Vue, Ruby, and Go.

### Setup

Install Homebrew
```sh
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```
Add Homebrew to the path
```sh
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> ~/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"
```

Install iterm2
```sh
brew install --cask iterm2
```

Install a nerd font
```sh
brew tap homebrew/cask-fonts
brew install --cask font-jetbrains-mono-nerd-font
```

Install neovim
```sh
brew install neovim
```

Install ripgrep
```sh
brew install ripgrep
```

Install node
```sh
brew install node
```

Clone the config
```sh
git clone git@github.com:fairchildspencer/nvim-config.git "${XDG_CONFIG_HOME:-$HOME/.config}"/nvim
```
