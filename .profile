export XDG_CONFIG_HOME="$HOME/.config"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_DATA_HOME="$HOME/.local/share"
export VIMINIT='let $MYVIMRC="$XDG_CONFIG_HOME/vim/vimrc" | source $MYVIMRC'
export SYSTEMD_PAGER="cat"
export GTK2_RC_FILES="$HOME/.config/gtkrc-2.0"
export WINEDLLOVERRIDES=winemenubuilder.exe=d
export PATH="/home/chaos/bin:$PATH"
export EDITOR="vim"
export PYTHONPATH="$HOME/pythonpath/:$PYTHONPATH"
alias emerge="sudo emerge"
alias userctl="systemctl --user"
