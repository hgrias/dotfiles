#!/bin/bash

RED="\033[31m"
GREEN="\033[32m"
YELLOW="\033[33m"
BLUE="\033[34m"
MAGENTA="\033[35m"
WHITE="\033[37m"
NORMAL="\033[0;39m"

printf "\n${WHITE}==============================================================================

SETTING UP YOUR COMPUTER!

==============================================================================${NORMAL}\n"

# Show hidden dotfiles in finder
printf "\n${MAGENTA}Showing hidden files to be visible finder...${NORMAL}\n"
eval "defaults write com.apple.finder AppleShowAllFiles YES"
eval "killall Finder"

# Install XCode Command Line Tools
printf "\n${BLUE}Installing XCode Command Line Tools...${NORMAL}\n"
eval "xcode-select --install"

# Install Homebrew for easier macOS package management
printf "\n${YELLOW}Installing Homebrew...${NORMAL}\n"
eval '/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"'

# If this is an M1 mac
if [[ `uname -m` == 'arm64' ]]; then
  echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> "/Users/$USER/.zprofile"
  eval "$(/opt/homebrew/bin/brew shellenv)"
fi

printf "\n${MAGENTA}Installing other brew casks...${NORMAL}\n"

printf "\n${MAGENTA}Installing github CLI...${NORMAL}\n"
eval "brew install gh"

printf "\n${MAGENTA}Installing stow...${NORMAL}\n"
eval "brew install stow"

printf "\n${MAGENTA}Installing vim...${NORMAL}\n"
eval "brew install vim"

printf "\n${MAGENTA}Installing fzf...${NORMAL}\n"
eval "brew install fzf"

printf "\n${MAGENTA}Installing fd...${NORMAL}\n"
eval "brew install fd"

printf "\n${MAGENTA}Installing bat...${NORMAL}\n"
eval "brew install bat"

printf "\n${MAGENTA}Installing git-delta...${NORMAL}\n"
eval "brew install git-delta"

# ---------- Cloning from Github ---------- #

printf "\n${BLUE}Cloning fzf-git...${NORMAL}\n"
eval "git clone https://github.com/junegunn/fzf-git.sh.git ${ZSH_CUSTOM:-~/fzf-git}"

# ---------- Install OhMyZsh with Plugins and Themes ---------- #
printf "\n${BLUE}Installing Oh My Zsh...${NORMAL}\n"
eval "sh -c '$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)'"

printf "\n${MAGENTA}Installing ZSH autosuggestions plugin...${NORMAL}\n"
eval "git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions"

printf "\n${MAGENTA}Installing ZSH syntax highlighting plugin...${NORMAL}\n"
eval "git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting"

printf "\n${MAGENTA}Installing ZSH you-should-use plugin...${NORMAL}\n"
eval "git clone https://github.com/MichaelAquilina/zsh-you-should-use.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/you-should-use"

printf "\n${MAGENTA}Installing ZSH powerlevel10k theme...${NORMAL}\n"
eval "git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/themes/powerlevel10k"

# Install NVM
printf "\n${GREEN}Installing NVM...${NORMAL}\n"
eval "curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.5/install.sh | bash"
eval "nvm install --lts"

# Open links for apps that can't be downloaded via brew cask
printf "\n${BLUE}Opening links for apps to download...${NORMAL}\n"

# Browsers
eval "open https://www.google.com/chrome/"
eval "open https://www.mozilla.org/en-US/firefox/new/"

# Productivity
eval "open https://rectangleapp.com/"
eval "open https://maccy.app/"
eval "open https://www.alfredapp.com/"
eval "open https://1password.com/downloads/mac/"
eval "open https://itunes.apple.com/us/app/next-meeting/id1017470484?mt=12"
eval "open https://ticktick.com/about/download"
eval "open https://www.notion.so/desktop"

# Development
eval "open https://code.visualstudio.com/"
eval "open https://www.iterm2.com/"
eval "open https://docs.docker.com/docker-for-mac/install/"

# Design
eval "open https://www.figma.com/downloads/"

# Follow the instructions on GitHub to generate a new SSH key and add it to your Github account.
printf "\n${WHITE}==============================================================================

${GREEN}All set!

${WHITE}Make sure to follow the instructions on GitHub to generate a new SSH key and then add the key to your GitHub account.

==============================================================================${NORMAL}\n"

eval "open https://help.github.com/articles/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent/#generating-a-new-ssh-key"
eval "open https://help.github.com/articles/adding-a-new-ssh-key-to-your-github-account"