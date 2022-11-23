let Combo = ./Combo.dhall
let Layer = ./Layer.dhall

in { Type =
    { name: Text
    , layers : List Layer.Type
    , layout: Text
    , combos : List Combo.Type
    }
, default = {
    name = "My Layout"
    }
}
