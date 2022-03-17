#!/bin/bash

KEYBOARD_HOME="$(pwd)"
export QMK_HOME="$KEYBOARD_HOME/qmk_firmware"
USER_SPACE="$QMK_HOME/users"
FERRIS="keyboards/ferris/keymaps"

if [[ ! -d "$QMK_HOME" ]]
then
    echo "Add git sub-modules..."
    git submodule add -f https://github.com/qmk/qmk_firmware
fi
echo "Update git sub-modules..."
git submodule sync --recursive
git submodule update --init --recursive --progress

if [[ ! -d "$USER_SPACE/fride" ]]     
then
    echo "Creating userspace symbolic link..."
    ln -s "$KEYBOARD_HOME/src/qmk/users/fride" "$USER_SPACE"
fi

    # Keyboards
if [[ ! -d "$QMK_HOME/$FERRIS/fride" ]]
then
    echo "Creating Ferris symbolic link..."
    ln -s "$KEYBOARD_HOME/src/qmk/$FERRIS/fride" "$QMK_HOME/$FERRIS"
fi