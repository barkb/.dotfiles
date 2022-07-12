autoload -Uz compinit
compinit
# use nix
if [ -e ~/.nix-profile/nix.sh ]; then . ~/.nix-profile/nix.sh; fi
# Source antibody
source ~/.zsh_plugins.sh

# Set Visual and Editor Envinroments
export EDITOR='nvim'
export VISUAL='nvim'

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

# Spaceship config, comment unwanted packages
SPACESHIP_PROMPT_ORDER=(
  # time        # Time stamps section (Disabled)
  user          # Username section
  dir           # Current directory section
  host          # Hostname section
  git           # Git section (git_branch + git_status)
  # hg            # Mercurial section (hg_branch  + hg_status)
  # package     # Package version (Disabled)
  node          # Node.js section
  # ruby          # Ruby section
  # elixir        # Elixir section
  xcode       # Xcode section (Disabled)
  swift         # Swift section
  # golang        # Go section
  # php           # PHP section
  rust          # Rust section
  haskell       # Haskell Stack section
  # julia       # Julia section (Disabled)
  # docker      # Docker section (Disabled)
  # aws           # Amazon Web Services section
  # gcloud        # Google Cloud Platform section
  # venv          # virtualenv section
  # conda         # conda virtualenv section
  pyenv         # Pyenv section
  # dotnet        # .NET section
  # ember       # Ember.js section (Disabled)
  # kubectl       # Kubectl context section
  # terraform     # Terraform workspace section
  # ibmcloud      # IBM Cloud section
  exec_time     # Execution time
  line_sep      # Line break
  # battery       # Battery level and status
  # vi_mode     # Vi-mode indicator (Disabled)
  jobs          # Background jobs indicator
  exit_code     # Exit code section
  char          # Prompt character
)
