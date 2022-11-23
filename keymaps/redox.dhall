let types = ../types.dhall

let row0 =
    ["TG(_SYM)"   ,"KC_1"    ,"KC_2"    ,"KC_3"    ,"KC_4"    ,"KC_5"]
  # ["KC_6"    ,"KC_7"    ,"KC_8"    ,"KC_9"    ,"KC_0"    ,"KC_ESC"]

let row1 = \(left: List Text) -> \(right: List Text) ->
    ["OS_LSFT"] # left # ["KC_NO"] # ["KC_NO"] # right # ["KC_NO"]

let row2 = \(left: List Text) -> \(right: List Text) ->
    ["OS_LALT"] # left # ["KC_NO"] # ["KC_NO"] # right # ["KC_NO"]

let row3 = \(left: List Text) -> \(right: List Text) ->
    ["TG(_NUM)"] # left # ["KC_NO", "KC_NO"] # ["KC_NO", "KC_NO"] # right # ["KC_NO"]

let mk_layer = \(block: types.HomeBlock.Type) ->
            row0
            # (row1 block.l1 block.r1)
            # (row2 block.l2 block.r2)
            # (row3 block.l3 block.r3)
            # ["KC_NO", "KC_NO", "KC_NO", "KC_NO"] # block.thumb_l # ["KC_NO", "KC_NO"] # block.thumb_r # ["KC_NO", "KC_NO", "KC_NO", "KC_NO"]
in
{
    mk_layer = mk_layer
}
