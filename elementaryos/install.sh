#!/bin/bash

echo -e "Choose Themese available \n 1 Owl Theme \n 2 Fedora Theme"

read a

sudo apt install -y dconf-tools
owl_theme (){
gsettings set io.elementary.terminal.settings palette '#011627:#EF5350:#22da6e:#addb67:#82aaff:#c792ea:#21c7a8:#ffffff:#575656:#ef5350:#22da6e:#ffeb95:#82aaff:#c792ea:#7fdbca:#ffffff'
gsettings set io.elementary.terminal.settings background '#011627'
gsettings set io.elementary.terminal.settings foreground '#d6deeb'
gsettings set io.elementary.terminal.settings cursor-color '#7e57c2'
}

fedora_theme (){
 gsettings set io.elementary.terminal.settings palette "#070736364242:#DCDC32322F2F:#858599990000:#B5B589890000:#26268B8BD2D2:#D3D336368282:#2A2AA1A19898:#EEEEE8E8D5D5:#00002B2B3636:#CBCB4B4B1616:#58586E6E7575:#65657B7B8383:#838394949696:#6C6C7171C4C4:#9393A1A1A1A1:#FDFDF6F6E3E3"
gsettings set io.elementary.terminal.settings foreground "#838394949696"
gsettings set io.elementary.terminal.settings background "#00002B2B3636"
gsettings set io.elementary.terminal.settings cursor-color "#838394949696"
gsettings set io.elementary.terminal.settings follow-last-tab "false"
}

do_nothing (){
    echo "Incorrect choice"
}

case $a in
"1")
   owl_theme
   ;;
"2")
   fedora_theme
   ;;
*)
   do_nothing
   ;;
esac
