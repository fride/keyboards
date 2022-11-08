let Combo = ./Combo.dhall
let Layer = ./Layer.dhall

in { Type =
    { name: Text
    , layers : List Layer.Type
    , combos : List Combo.Type
    }
, default = {
    name = "My Layout"
    }
}
