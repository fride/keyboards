#!/bin/bash

KEYBOARD_HOME="$(pwd)"
export QMK_HOME="$KEYBOARD_HOME/qmk_firmware"
FERRIS_TARGET_DIR=$QMK_HOME/keyboards/ferris/keymaps/fride

if [[ ! -d "$QMK_HOME" ]]
then
    echo "Add git sub-modules..."
    git submodule add -f https://github.com/qmk/qmk_firmware
fi
echo "Update git sub-modules..."
git submodule sync --recursive
git submodule update --init --recursive --progress
(
  cd qmk_firmware
  git checkout "0.18.16"
)

if [[ ! -d $FERRIS_TARGET_DIR ]]
then
  echo "linking Ferris ..."
  ln -s $KEYBOARD_HOME/src/keymaps/fride $FERRIS_TARGET_DIR
fi
