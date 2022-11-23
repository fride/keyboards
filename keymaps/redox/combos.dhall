let types = ../../types.dhall

let kp = types.Binding.kp

let Combo = types.Combo
in  [
    Combo.combo "combo_numword" 20 [ 30, 33 ] "NUMWORD"
]
