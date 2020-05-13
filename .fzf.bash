# Setup fzf
# ---------
if [[ ! "$PATH" == */usr/local/opt/fzf/bin* ]]; then
  export PATH="${PATH:+${PATH}:}/usr/local/opt/fzf/bin"
fi

# Auto-completion
# ---------------
[[ $- == *i* ]] && source "/usr/local/opt/fzf/shell/completion.bash" 2> /dev/null
_fzf_setup_completion path nano
_fzf_setup_completion host dexssh

# Key bindings
# ------------
source "/usr/local/opt/fzf/shell/key-bindings.bash"
