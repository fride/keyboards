{
  description = "Tools to build and flash my custom macropad";

  inputs =
    {
      nixpkgs.url = github:nixos/nixpkgs/nixpkgs-unstable;
      flake-utils-plus.url = github:gytis-ivaskevicius/flake-utils-plus/master;
      qmk-nix-utils.url = github:fride/qmk-nix-utils/main;
    };

  outputs =
    { self
    , nixpkgs
    , flake-utils-plus
    , qmk-nix-utils
    }: flake-utils-plus.lib.eachDefaultSystem (system:
      let
        pkgs = import nixpkgs { inherit system; };

        qmk-source = pkgs.fetchFromGitHub {
          owner = "qmk";
          repo = "qmk_firmware";
          rev = "0.18.16";
          sha256 = "sha256-f+IHgUQANDMK0CykfgQ6E2QCB3ZB80RMrlQwhZjwr18=";
          fetchSubmodules = true;
        };

        generated-source = pkgs.mkDeriviation {
            src = ./.;
            name = "genereted-qmk-ferris-source";
            buildInputs = [ pkgs.dhall ];
            installPhase = ''
              KEYBOARD_DIR="$out/keymaps/fride"
              mkdir -p "$KEYBOARD_DIR
              dhall text <<< './render/toKeymapSource.dhall ./keymaps/ferris-fride.dhall' > $KEYBOARD_DIR/keymap.c
              dhall text <<< './render/renderComboDefs.dhall ./keymaps/ferris-fride.dhall' > $KEYBOARD_DIR/combos.def
              dhall text <<< './render/renderComboTerms.dhall ./keymaps/ferris-fride.dhall' > $KEYBOARD_DIR/combos_terms.inc
            '';
        };
        utils-factory = builtins.getAttr system qmk-nix-utils.utils-factory;

        # I do not like python. Never will!
        customPython = pkgs.python39.buildEnv.override {
          extraLibs = [
            pkgs.python39Packages.pyserial
            pkgs.python39Packages.pillow];
        };

        utils = utils-factory
          {
            src = ./src;
            keyboard-name    = "ferris";
            keymap-name      = "fride";
            keyboard-version = "/0_2";
            qmk-firmware-source = qmk-source;
            extra-build-inputs = [
              customPython
            ];
            flash-script = ''
              qmk flash -kb ferris/0_2 -km fride
          '';
          };
      in
        {
          devShell = utils.dev-shell;
          defaultPackage = utils.hex;
          defaultApp = utils.flasher;
          apps.flash = utils.flasher;
        }
    );
}
