#!/bin/bash
steam_dir="/root"
install_dir="/root/csgoserver"
Prophunt_dir="/root/csgoserver/csgo/Prophuntmods"
Practice_dir="/root/csgoserver/csgo/Practicemods"
config_dir="/root/csgoserver/csgo"
plugins_dir="/root/csgoserver/csgo/addons/sourcemod/plugins"
disabled_plugins_dir="/root/csgoserver/csgo/addons/sourcemod/plugins/disabled"
cd ${steam_dir}
./steamcmd.sh +force_install_dir "$install_dir" +login anonymous +app_update 740  +quit
if [ $1 -eq 1 ]
then 
cd ${plugins_dir}
mv fortnite_emotes_extended.smx disabled
mv sounds.smx disabled
mv speedrules.smx disabled
mv prophunt.smx disabled
cd ${install_dir}
./srcds_run -tickrate 128 -usrcon 1
elif [ $1 -eq 2 ]
then 
cd ${disabled_plugins_dir}
mv fortnite_emotes_extended.smx ..
mv sounds.smx ..
mv speedrules.smx ..
mv prophunt.smx ..
cd ${install_dir}
./srcds_run -tickrate 128 -usrcon 1 -nobots
fi
