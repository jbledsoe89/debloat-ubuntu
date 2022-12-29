#!/bin/bash

# last tested on Ubuntu 22.04

# define an array of applications
apps=("aisleriot" "brltty" "duplicity" "empathy" "empathy-common" "example-content" "gnome-accessibility-themes" 
"gnome-contacts" "gnome-mahjongg" "gnome-mines" "gnome-orca" "gnome-screensaver" "gnome-sudoku" "gnome-video-effects" 
"landscape-common" "libreoffice-avmedia-backend-gstreamer" "libreoffice-base-core" "libreoffice-calc" "libreoffice-common"
"libreoffice-core" "libreoffice-draw" "libreoffice-gnome" "libreoffice-gtk" "libreoffice-impress" "libreoffice-math" 
"libreoffice-ogltrans" "libreoffice-pdfimport" "libreoffice-style-galaxy" "libreoffice-style-human" "libreoffice-writer" 
"libsane" "libsane-common" "python3-uno" "rhythmbox" "rhythmbox-plugins" "rhythmbox-plugin-zeitgeist" "sane-utils" 
"shotwell" "shotwell-common" "telepathy-gabble" "telepathy-idle" "telepathy-indicator" "telepathy-logger" 
"telepathy-mission-control-5" "totem" "totem-common" "totem-plugins" "printer-driver-brlaser" "printer-driver-foo2zjs" 
"printer-driver-foo2zjs-common" "printer-driver-m2300w" "printer-driver-ptouch" "printer-driver-splix")

# loop through each application
for app in "${apps[@]}"
do
    # check if the application is installed
    if dpkg -l | grep -q $app; then
        # remove the application if it is installed
        sudo apt-get remove $app -y
    fi
done
