let types = ../types.dhall
in
{
    mk_layer = \(block: types.HomeBlock.Type) ->
          block.l1 # block.r1
        # block.l2 # block.r2
        # block.l3 # block.r3
        # block.thumb_l # block.thumb_r
}
