if status is-interactive
    # Commands to run in interactive sessions can go here
end

set -g fish_greeting ''

starship init fish | source
zoxide init fish | source
fzf --fish | source

alias cd=z
alias cat=bat

# Created by `pipx` on 2024-04-28 07:17:52
set PATH $PATH /home/zaiyhu/.local/bin
