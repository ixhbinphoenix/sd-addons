#!/bin/bash

echo "This script will install all plugins and scripts from the repo to your local ScriptDeck installation"
echo "(Press enter to continue)"
read

SCRIPTPATH=$(pwd)/scripts/*
PLUGINPATH=$(pwd)/plugins/*

mv $HOME/.config/scriptdeck-desktop/plugins ./plugins.old
mkdir $HOME/.config/scriptdeck-desktop/plugins/
mv $HOME/.config/scriptdeck-desktop/scripts ./scripts.old
mkdir $HOME/.config/scriptdeck-desktop/scripts/

for f in $SCRIPTPATH
do
    ln -s $f $HOME/.config/scriptdeck-desktop/scripts/
done
for f2 in $PLUGINPATH
do
    ln -s $f2 $HOME/.config/scriptdeck-desktop/plugins/
done

echo "Done. Restart ScriptDeck to load the addons"