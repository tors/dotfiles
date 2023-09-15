# homebrew
eval "$(/opt/homebrew/bin/brew shellenv)"

# zplug
source ~/.zplug/init.zsh
zplug "zsh-users/zsh-autosuggestions"
zplug load

# direnv
eval "$(direnv hook zsh)"

# python, pyenv
export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

# node
eval "$(fnm env --use-on-cd)"

# golang
export GOPATH=$HOME/go
export GOROOT="$(brew --prefix golang)/libexec"
export PATH="$PATH:${GOPATH}/bin:${GOROOT}/bin"

# rust, foundry
export PATH="$PATH:/Users/tors/.foundry/bin"

# podman, docker
export DOCKER_HOST='unix:///Users/tors/.local/share/containers/podman/machine/qemu/podman.sock'

# git
alias lg=lazygit
# pnpm
alias pn=pnpm
# zellij
alias zj=zellij

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

# Find and set branch name var if in git repository.
function git_branch_name()
{
  branch=$(git symbolic-ref HEAD 2> /dev/null | awk 'BEGIN{FS="/"} {print $NF}')
  if [[ $branch == "" ]];
  then
    :
  else
    echo ' ['$branch']'
  fi
}

# Enable substitution in the prompt.
setopt prompt_subst

# Config for prompt. PS1 synonym.
PROMPT='%2/%F{green}$(git_branch_name) %F{cyan}λ %F{reset_color}'

# bun
[ -s "/Users/tors/.bun/_bun" ] && source "/Users/tors/.bun/_bun"
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# kubernetes
source <(kubectl completion zsh)  # setup autocomplete in zsh into the current shell
[[ $commands[kubectl] ]] && source <(kubectl completion zsh)
alias k=kubectl

# ruby
eval "$(rbenv init - zsh)"
