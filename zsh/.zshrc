# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# use nix
if [-e ~/.nix-profile/etc/profile.d/nix.sh ]; then . ~/.nix-profile/etc/profile.d/nix.sh; fi

### General Aliases
alias cman='colored man'
alias sl='subl'
alias gcob='git checkout -b'
alias gfo='git fetch origin'
alias gpo='git push -u origin'
alias gp='git push'
alias gpl='git pull'
alias glog='git log --oneline'
alias ioscon='cd ~/ios-consumer'
alias iosconalt='cd ~/ios-consumer-alt'

