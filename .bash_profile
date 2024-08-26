# /etc/skel/.bash_profile

# Environment variable
export QT_QPA_PLATFORM=wayland
export GTK_IM_MODULE=ibus
export XMODIFIERS=@im=ibus
export QT_IM_MODULE=ibus
export _JAVA_AWT_WM_NONREPARENTING=1
export _JAVA_OPTIONS='-Dawt.useSystemAAFontSettings=gasp'
export GTK_THEME=Adwaita
export QT_QPA_PLATFORMTHEME=qt5ct
export PATH=$PATH:~/.bin
export S_A_R=0

# This file is sourced by bash for login shells.  The following line
# runs your .bashrc and is recommended by the bash info pages.
if [[ -f ~/.bashrc ]] ; then
	. ~/.bashrc
fi
