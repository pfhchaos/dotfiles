xrdb -merge "$HOME/.Xresources"
. $HOME/.profile
eval "$(gpg-agent --daemon)"

case "$(hostname)" in
	ChaosBeast)
		synergys
		xwinwrap -ni -g 1920x1080+0+0 -s -b -ov -- electest.sh WID &
		xwinwrap -ni -g 1920x1080+1920+0 -s -b -ov -- electest.sh WID &
		xwinwrap -ni -g 1920x1080+3840+0 -s -b -ov -- electest.sh WID &
	;;
	portablechaos)
		xwinwrap -ni -g 1600x900+0+0 -s -b -ov -- electest.sh WID &
		init-synaptics &
	;;
esac

i3
