set fish_greeting ""

# theme
set -g fish_prompt_pwd_dir_length 1
set -g theme_display_user yes
set -g theme_hide_hostname no
set -g theme_hostname always

# aliases
alias nvim='nvim --listen 0'
alias ls lsd
alias lst "lsd --tree"
alias la "ls -A"
alias ll "ls -l"
alias lla "ll -A"
alias g git
command -qv nvim && alias vim nvim

# NVM
function __check_rvm --on-variable PWD --description 'Do nvm stuff'
    status --is-command-substitution; and return

    if test -f .nvmrc; and test -r .nvmrc
        nvm use
    else
    end
end

set -x DEC_ENV dev

set -x OPENAI_API_KEY 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

if status is-interactive
    # Commands to run in interactive sessions can go here
    set fish_prompt_pwd_dir_length 0
end
