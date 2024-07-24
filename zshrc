eval "$(direnv hook zsh)"
eval "$(atuin init zsh)"

# python
export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

# openssl export PATH="/opt/homebrew/opt/openssl@3/bin:$PATH"

# node
eval "$(fnm env --use-on-cd)"

# golang
export GOPATH=$HOME/go
export GOROOT="$(brew --prefix golang)/libexec"
export PATH="$PATH:${GOPATH}/bin:${GOROOT}/bin"

# rust, foundry
export PATH="$PATH:/Users/tors/.foundry/bin"

# postgres
export PATH="/opt/homebrew/opt/libpq/bin:$PATH"

# zplug
source ~/.zplug/init.zsh
zplug "zsh-users/zsh-autosuggestions"
zplug load

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
  git branch 2> /dev/null | sed -n -e 's/^\* \(.*\)/ [\1]/p'
}

# Enable substitution in the prompt.
setopt prompt_subst

# Config for prompt. PS1 synonym.
PROMPT='%2/%F{green}$(git_branch_name)%F{cyan} λ %F{reset_color}'

# bun
[ -s "/Users/tors/.bun/_bun" ] && source "/Users/tors/.bun/_bun"
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# pnpm
export PNPM_HOME="/Users/tors/Library/pnpm"
export PATH="$PNPM_HOME:$PATH"

# ruby
eval "$(rbenv init - zsh)"

# lazy git commit
mcommit=(
    "¯\\_(ツ)_/¯"
    "¯\\_㋡_/¯"
    "(╯°Д°)╯︵/(.□ . \\)"
    "(┛◉Д◉)┛彡┻━┻"
    "┻━┻︵ \\(°□°)/ ︵ ┻━┻"
    "(┛ಠ_ಠ)┛彡┻━┻"
    "(ノಠ益ಠ)ノ彡┻━┻"
    "(╯°□°)╯︵ ┻━┻"
    "(˚Õ˚)ر ~~~~╚╩╩╝"
    "ヽ(ຈل͜ຈ)ﾉ︵ ┻━┻"
    "┬─┬ノ( º _ ºノ)"
    "(☞ﾟヮﾟ)☞ ┻━┻"
    "┳━┳ ヽ(ಠل͜ಠ)ﾉ"
    "¯\(◉‿◉)/¯"
    "¯\(◉◡◔)/¯"
    "(⊙_◎)"
    "ಠಿ_ಠ"
    "(；¬д¬)"
    "ಡ_ಡ"
    "●_●"
    "ಠ﹏ಠ"
    "٩(๏_๏)۶"
    "( ͡° ͜ʖ ͡°)"
    "༼ つ ◕_◕ ༽つ"
    "(づ｡◕‿‿◕｡)づ"
    "¿ⓧ_ⓧﮌ"
    "(Ծ‸ Ծ)"
    "{ಠʖಠ}"
    "乁( ◔ ౪◔)「      ┑(￣Д ￣)┍"
    "༼ ༎ຶ ෴ ༎ຶ༽"
    "(ง •̀_•́)ง"
    " ༎ຶ‿༎ຶ "
    "┏━┓┏━┓┏━┓ ︵ /(^.^/)"
    "┳━┳ ヽ(ಠﻝ͜ಠ)ﾉ"
    "щ（ﾟДﾟщ）"
    "༼∵༽ ༼⍨༽ ༼⍢༽ ༼⍤༽"
)
alias cm='git commit -m "$mcommit[$(( $RANDOM % $#mcommit+1 ))]"'
