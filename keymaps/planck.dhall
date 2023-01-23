let types = ../types.dhall

let mk_layer = \(block: types.HomeBlock.Type) ->
              ["KC_ESC"] # block.l1 # block.r1 # ["KC_DEL"]
            # ["OS_LSFT"]  # block.l2 # block.r2 # ["OS_LSFT"]
            # ["OS_LSFT"]  # block.l3 # block.r3 # ["OS_LSFT"]
            # ["KC_NO", "KC_NO", "KC_NO", "KC_NO"] # block.thumb_l # block.thumb_r # ["KC_NO", "KC_NO", "KC_NO", "KC_NO"]
in
{
    mk_layer = mk_layer
}
