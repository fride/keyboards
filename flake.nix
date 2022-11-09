{
  description = "Tools to build and flash my custom macropad";

  inputs =
    {
      nixpkgs.url = github:nixos/nixpkgs/nixpkgs-unstable;
      flake-utils-plus.url = github:gytis-ivaskevicius/flake-utils-plus/master;
      qmk-nix-utils.url = github:fride/qmk-nix-utils/master;
    };

  outputs =
    { self
    , nixpkgs
    , flake-utils-plus
    , qmk-nix-utils
    }: flake-utils-plus.lib.eachDefaultSystem (system:
    let
      pkgs = import nixpkgs { inherit system; };

      qmk-vial-source = pkgs.fetchFromGitHub {
        owner = "qmk";
        repo = "qmk_firmware";
        rev = "0.18.16";
        sha256 = "sha256-f+IHgUQANDMK0CykfgQ6E2QCB3ZB80RMrlQwhZjwr18=";
        fetchSubmodules = true;
      };

      utils-factory = builtins.getAttr system qmk-nix-utils.utils-factory;

      utils = utils-factory
        {
          src = ./src;
          keyboard-name = "ferris";
          keymap-name = "fride";
          qmk-firmware-source = qmk-vial-source;
          flash-script = ''
            echo -n "Press the RESET button..."
            while [ ! -e /dev/ttyACM0 ]
            do
              echo -n "."
              sleep 0.5
            done
            ${pkgs.avrdude}/bin/avrdude -p atmega32u4 -c avr109 -P /dev/ttyACM0 -U flash:w:$HEX_FILE
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
