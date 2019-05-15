emulate sh -c 'source ~/.bashrc'
if ! [[ -a "${funcsourcetrace[1]%/*}/antigen.zsh" ]]
then
    curl -L git.io/antigen > "${funcsourcetrace[1]%/*}/antigen.zsh"
fi
# Use the path where you installed Antigen
source "${funcsourcetrace[1]%/*}/antigen.zsh"
# Load Oh My Zsh
antigen use oh-my-zsh
# Example of how to add other useful things
antigen bundle zsh-users/zsh-completions
antigen bundle git
antigen bundle borekb/agkozak-zsh-theme@prompt-customization
antigen bundle zsh-users/zsh-syntax-highlighting
antigen apply
# Make /c/... autocompletion work, see Alexpux/MSYS2-packages#38
zstyle ':completion:*' fake-files /: '/:c'
