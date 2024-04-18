if status is-interactive
    # Commands to run in interactive sessions can go here
end

set -g fish_greeting ''

starship init fish | source
zoxide init fish | source
fzf --fish | source
