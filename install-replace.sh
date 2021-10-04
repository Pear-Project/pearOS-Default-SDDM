#!/bin/bash
#   Copyright (c) 2019-2021 Alexandru Balan under the PearProject. All rights reserved


if (whiptail --title "pearOS Lock-Screen installation wizard" --yesno "Do you want to install the default pearOS SDDM (Lock-screen) Theme?" 8 78); then
   sudo find /usr/share/sddm/themes/breeze/ -type f -not -name '*desktop' -print0 | xargs -0  -I {} rm -v {}
   rm -Rf ./pearOS/*.desktop
   sudo cp -r ./pearOS/* /usr/share/sddm/themes/breeze/

else
    echo "Installation closed by the user. Exit code is $?."
fi
