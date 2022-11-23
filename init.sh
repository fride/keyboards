#!/bin/bash

KEYBOARD_HOME="$(pwd)"
export QMK_HOME="$KEYBOARD_HOME/qmk_firmware"
FERRIS_TARGET_DIR=$QMK_HOME/keyboards/ferris/keymaps/fride
REDOX_TARGET_DIR=$QMK_HOME/keyboards/redox/keymaps/fride
PLANCK_TARGET_DIR=$QMK_HOME/keyboards/planck/keymaps/fride
USER_TARGET_DIR=$QMK_HOME/users/fride

if [[ ! -d "$QMK_HOME" ]]
then
    echo "Add git sub-modules..."
    git submodule add -f https://github.com/qmk/qmk_firmware
    echo "Update git sub-modules..."
    git submodule sync --recursive
    git submodule update --init --recursive --progress
    (
      cd qmk_firmware
      git checkout "0.18.16"
    )
fi

if [[ ! -d $FERRIS_TARGET_DIR ]]
then
  echo "linking Ferris director..."
  ln -s $KEYBOARD_HOME/src/keymaps/ferris/fride $FERRIS_TARGET_DIR
fi

if [[ ! -d $REDOX_TARGET_DIR ]]
then
  echo "linking Redox director..."
  ln -s $KEYBOARD_HOME/src/keymaps/redox/fride $REDOX_TARGET_DIR
fi
if [[ ! -d $PLANCK_TARGET_DIR ]]
then
  echo "linking Redox director..."
  ln -s $KEYBOARD_HOME/src/keymaps/planck/fride $PLANCK_TARGET_DIR
fi

if [[ ! -d $USER_TARGET_DIR ]]
then
  echo "linking user fride director..."
  ln -s $KEYBOARD_HOME/src/users/fride $USER_TARGET_DIR
fi
