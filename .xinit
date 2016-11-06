hsetroot -solid #000000

xrdb -merge "$HOME/.Xresources"
. $HOME/.profile
eval "$(gpg-agent --daemon)"

case "$(hostname)" in
	ChaosBeast)
		synergys
	;;
	portablechaos)
		init-synaptics &
	;;
esac

esdesk start
i3
