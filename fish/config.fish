if status is-interactive
    # Commands to run in interactive sessions can go here
end

set -g fish_greeting ''

set PATH $PATH /home/zaiyhu/.local/bin

# plugins
starship init fish | source
zoxide init fish | source
fzf --fish | source
pyenv init - | source

# ssh agent startup
eval (ssh-agent -c) > /dev/null

# aliases
alias cd=z
alias cat=bat
