emulate sh -c 'source ~/.bashrc'
if ! [[ -a ~/antigen.zsh ]]
then
	echo "download"
    curl -L git.io/antigen > ~/antigen.zsh
fi
# Use the path where you installed Antigen
source ~/antigen.zsh
# Load Oh My Zsh
antigen use oh-my-zsh
antigen theme borekb/agkozak-zsh-theme@prompt-customization
antigen bundle git
antigen bundle aws
antigen apply

# Make /c/... autocompletion work, see Alexpux/MSYS2-packages#38
zstyle ':completion:*' fake-files /: '/:c' '/:g'
