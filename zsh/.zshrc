# Lines configured by zsh-newuser-install
HISTFILE=~/.cache/zsh
HISTSIZE=10000
SAVEHIST=10000
setopt autocd extendedglob nomatch notify
unsetopt beep
bindkey -v
bindkey jj vi-cmd-mode

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# ~/scripts/aliases.sh instead of adding them here directly
if [ -f ~/scripts/aliases.sh ]; then
    . ~/scripts/aliases.sh
fi

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/pwk/tools/miniconda/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/pwk/tools/miniconda/etc/profile.d/conda.sh" ]; then
        . "/home/pwk/tools/miniconda/etc/profile.d/conda.sh"
    else
        export PATH="/home/pwk/tools/miniconda/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

###############################################################################

conda config --set changeps1 false

function zle-keymap-select() {
   zle reset-prompt zle -R
}
zle -N zle-keymap-select


autoload -U colors && colors
function vi_mode_prompt_info() { echo "%{$fg[red]%}${${KEYMAP/vicmd/[% NORMAL]%}/(main|viins)/[% INSERT]%}" }

RPS1='%t $(vi_mode_prompt_info)'
RPS2=$RPS1

SPACESHIP_GIT_PREFIX=''
SPACESHIP_CONDA_PREFIX=''
SPACESHIP_VI_MODE_COLOR=green
SPACESHIP_VI_MODE_INSERT=''
SPACESHIP_VI_MODE_NORMAL='[N]'

SPACESHIP_EXEC_TIME_SHOW=false
SPACESHIP_PROMPT_ADD_NEWLINE=false
SPACESHIP_PROMPT_SEPARATE_LINE=false
SPACESHIP_CHAR_SYMBOL=❯
SPACESHIP_CHAR_SUFFIX=" "
SPACESHIP_HG_SHOW=false
SPACESHIP_PACKAGE_SHOW=false
SPACESHIP_NODE_SHOW=false
SPACESHIP_RUBY_SHOW=false
SPACESHIP_ELM_SHOW=false
SPACESHIP_ELIXIR_SHOW=false
SPACESHIP_XCODE_SHOW_LOCAL=false
SPACESHIP_SWIFT_SHOW_LOCAL=false
SPACESHIP_GOLANG_SHOW=false
SPACESHIP_PHP_SHOW=false
SPACESHIP_RUST_SHOW=false
SPACESHIP_JULIA_SHOW=false
SPACESHIP_DOCKER_SHOW=false
SPACESHIP_DOCKER_CONTEXT_SHOW=false
SPACESHIP_AWS_SHOW=false
SPACESHIP_CONDA_SHOW=true
SPACESHIP_VENV_SHOW=false
SPACESHIP_PYENV_SHOW=false
SPACESHIP_DOTNET_SHOW=false
SPACESHIP_EMBER_SHOW=false
SPACESHIP_KUBECONTEXT_SHOW=false
SPACESHIP_TERRAFORM_SHOW=false
SPACESHIP_TERRAFORM_SHOW=false
SPACESHIP_VI_MODE_SHOW=true
SPACESHIP_JOBS_SHOW=false


autoload -U promptinit; promptinit
prompt spaceship

source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
