if status is-interactive
    keychain --quiet
end

set -g fish_greeting ''

# plugins
starship init fish | source
zoxide init fish | source
fzf --fish | source
pyenv init - | source
fnm env --use-on-cd --shell fish | source

# Export DISPLAY if not set (important for GUI)
if not set -q DISPLAY
    set -gx DISPLAY :0
end

# aliases
alias cd=z
alias cat=bat
