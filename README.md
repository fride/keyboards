# Jans Keyboards

Inspired by:

- https://github.com/rafaelromao/keyboards
- https://github.com/treeman/qmk_firmware/tree/master/keyboards/ferris/keymaps

and many others.

todo use a nix flake to install this stuff!?

```
    dhall text <<< './render/toKeymapSource.dhall ./keymaps/ferris-canary-thumb-t.dhall'
    dhall text <<< './render/renderComboDefs.dhall ./keymaps/ferris-canary-thumb-t.dhall'
```
