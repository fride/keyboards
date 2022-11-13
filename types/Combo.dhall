let Binding = ./Binding.dhall

in  { Type =
        { name : Text
        , timeout : Natural
        , key-positions : List Natural
        , binding : Binding
        }
    , default.timeout = 10
    , combo =
        \(name : Text) ->
        \(timeout : Natural) ->
        \(key-positions : List Natural) ->
        \(kp : Text) ->
          { name, timeout, key-positions, binding = Binding.kp kp }
    , subs =
        \(name : Text) ->
        \(timeout : Natural) ->
        \(key-positions : List Natural) ->
        \(macro : Text) ->
          { name, timeout, key-positions, binding = Binding.macro macro }
    }
