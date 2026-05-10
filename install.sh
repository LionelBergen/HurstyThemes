#!/usr/bin/env bash

# This script will install the 3rd party script installer
# for Hursty's Themes.

# These themes are to be used on a Raspberry Pi / RetroPie build

# It also includes the Motion Blue Unified ES bootup themes randomizer script

# Download repository

retropie_dir="/home/retrogaming/RetroPie"

retropie_menu_dir=$retropie_dir/retropiemenu
retropie_scripts_dir=$retropie_dir/scripts

rm -rf "/tmp/hursty"
mkdir -p "/tmp/hursty"
git clone "https://github.com/RetroHursty69/HurstyThemes.git" "/tmp/hursty"

# Move files to proper directory

cp /tmp/hursty/hurstythemes.sh $retropie_menu_dir

echo "copied hurstythemes.sh"

chmod 777 $retropie_menu_dir/hurstythemes.sh

cp /tmp/hursty/hurstythemes.png $retropie_menu_dir/icons
if [[ -d "$retropie_scripts_dir" ]]; then
  echo "scripts dir exists" > /dev/null
else
    mkdir $retropie_scripts_dir
    echo "made dir: $retropie_scripts_dir"
fi

cp /tmp/hursty/themerandom.sh $retropie_scripts_dir
chmod 777 $retropie_scripts_dir/themerandom.sh

# Update RetroPie gamelist.xml to add new entry

exit 1

