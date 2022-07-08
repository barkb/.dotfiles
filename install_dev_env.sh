# Install nix
curl -L https://nix.org/nix/install | sh
# source nix
. ~/.nix-profile/etc/profile.d/nix.sh
# install packages
nix-env -iA \
    nixpkgs.zsh \
    nixpkgs.antibody \
    nixpkgs.git \
    nixpkgs.nvim \
    nixpkgs.stow \
    nixpkgs.fzf \
    nixpkgs.ripgrep \
    nixpkgs.bat \
    nixpkgs.direnv \
    nixpkgs.ffmpeg \
    nixpkgs.youtube-dl \
    nixpkgs.ijq \
    nixpkgs.ranger
    
# stow
stow git
stow zsh
stow vim
stow nvim
stow ranger

command -v zsh | sudo tee -a /etc/shells

sudo chsh -s $(which zsh) $USER

# Install zsh plugins with antibody
antibody bundle < ~/.zsh_plugins.txt > ~/.zsh_plugins.sh
# if work laptop install brew and those packages

# setup configs
