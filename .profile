export XDG_CONFIG_HOME="$HOME/.config"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_DATA_HOME="$HOME/.local/share"
export SYSTEMD_PAGER="cat"
export XDG_CURRENT_DESKTOP="sway"
export XDG_SESSION_TYPE="wayland"
export GTK2_RC_FILES="$HOME/.config/gtkrc-2.0"
export WINEDLLOVERRIDES=winemenubuilder.exe=d
export PATH="$HOME/bin:$HOME/.cargo/bin:$PATH:/usr/local/games/bin:/usr/games/bin:$(python3 -c 'import site; print(site.USER_BASE)')/bin"
export TERMINAL="alacritty"
export EDITOR="nvim"
export VISUAL="nvim"
export PYTHONPATH="$HOME/pythonpath/:$PYTHONPATH"
export SSH_AUTH_SOCK="${XDG_RUNTIME_DIR}/ssh-agent.socket"
export PICO_SDK_PATH="/usr/local/pico-sdk"
export NEWT_COLORS="
           root=color15,default
         border=color15,default
         shadow=color15,default
         window=color15,default
          title=color13,default
         button=color13,color0
      actbutton=color7,color0
       checkbox=color15,default
    actcheckbox=color13,color0
          entry=color15,color0
          label=color13,default
        listbox=color15,default
     actlistbox=color13,default
        textbox=color15,default
     acttextbox=color13,color0
       helpline=color15,default
       roottext=color15,color0
     emptyscale=color15,color0
      fullscale=color15,color0
       disentry=color8,default
  compactbutton=color15,default
  actsellistbox=color13,color0
     sellistbox=color15,default
"
export PICO_SDK_PATH="/usr/local/pico-sdk"
export QT_STYLE_OVERRIDE="adwaita"

alias emerge="sudo emerge"
alias userctl="systemctl --user"
alias ssh='TERM=xterm-color ssh'
