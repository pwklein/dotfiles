#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

if [ -f ~/scripts/my_prompt.sh ]; then
    . ~/scripts/my_prompt.sh
fi


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

