#!/bin/bash
# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/dholec/software/miniconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/dholec/software/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/home/dholec/software/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/dholec/software/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

conda activate chgnet
python calc_script.py
