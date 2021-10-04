#!/bin/bash
#   Copyright (c) 2019-2021 Alexandru Balan under the PearProject. All rights reserved


if (whiptail --title "pearOS Lock-Screen installation wizard" --yesno "Do you want to install the default pearOS SDDM (Lock-screen) Theme?" 8 78); then
   sudo cp -r ./pearOS /usr/share/sddm/themes/
else
    echo "Installation closed by the user. Exit code is $?."
fi
