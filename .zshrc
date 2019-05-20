export TERM="xterm-256color"
if [ -z "$TMUX" ]
then
    tmux attach -t TMUX || tmux new -s TMUX
    exit
fi
emulate sh -c 'source ~/.bashrc'
unsetopt BG_NICE
if ! [[ -a ~/antigen.zsh ]]
then
    curl -L git.io/antigen > ~/antigen.zsh
fi
AGKOZAK_LEFT_PROMPT_ONLY=1
# Use the path where you installed Antigen
source ~/antigen.zsh
# Load Oh My Zsh
antigen use oh-my-zsh
antigen theme bhilburn/powerlevel9k
antigen bundle git
antigen bundle aws
antigen apply

mypath=${0:a:h}
# for aws cli
export PATH=~/.local/bin:${mypath}:$PATH
