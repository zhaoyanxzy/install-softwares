#!/bin/bash

# Install Homebrew (if not already installed)
if ! command -v brew &> /dev/null
then
    echo "Homebrew not found. Installing Homebrew..."
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    (echo; echo 'eval "$(/opt/homebrew/bin/brew shellenv)"') >> /Users/zhaoyan.x/.zprofile
    eval "$(/opt/homebrew/bin/brew shellenv)"
else
    echo "Homebrew already installed."
fi

# Install Rectangle
echo "Installing Rectangle..."
brew install --cask rectangle

# Install VS Code
echo "Installing VS Code..."
brew install --cask visual-studio-code

# Install Docker
echo "Installing Docker..."
brew install --cask docker

# Install MySql
echo "Installing MySql..."
brew install mysql

# Install iTerm2
echo "Installing iTerm2..."
brew install --cask iterm2

# Install Oh My Zsh
echo "Installing Oh My Zsh..."
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Install zsh-autosuggestions
echo "Installing zsh-autosuggestions..."
brew install zsh-autosuggestions
echo source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh >> ~/.zshrc

# Install zsh-syntax-highlighting
echo "Installing zsh-syntax-highlighting..."
brew install zsh-syntax-highlighting
echo "source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" >> ~/.zshrc

echo "Installation complete."
