#!/usr/bin/env bash

# This script will install the 3rd party script installer
# for Hursty's Themes.

# These themes are to be used on a Raspberry Pi / RetroPie build

# It also includes the Motion Blue Unified ES bootup themes randomizer script

# Download repository

retropie_folder="/home/retrogaming/RetroPie"

rm -rf "/tmp/hursty"
mkdir -p "/tmp/hursty"
git clone "https://github.com/RetroHursty69/HurstyThemes.git" "/tmp/hursty"

# Move files to proper directory

cp /tmp/hursty/hurstythemes.sh $retropie_folder/retropiemenu

echo "done test"

exit 1
fi

