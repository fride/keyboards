# Jans Keyboards

Inspired by:

- https://github.com/rafaelromao/keyboards
- https://github.com/treeman/qmk_firmware/tree/master/keyboards/ferris/keymaps
- https://docs.google.com/document/d/1_a5Nzbkwyk1o0bvTctZrtgsee9jSP-6I0q3A0_9Mzm0/edit#heading=h.eacu4ni0y4i0
- https://sites.google.com/alanreiser.com/handsdown/home/hands-down-neu
- https://keymapdb.com/keymaps/alterecco-zmk/
- https://github.com/possumvibes/qmk_firmware/tree/1c9a9376ea256cfcfbf4b33d81b85763c974191c/users/possumvibes

## Dhall
- https://github.com/dhall-lang/dhall-lang/blob/master/Prelude/Natural/show.dhall
- https://learnxinyminutes.com/docs/dhall/
- https://github.com/dhall-lang/dhall-nethack
- https://github.com/dhall-lang/dhall-lang
 
and many others.

todo use a nix flake to install this stuff!?

```
    dhall text <<< './render/toKeymapSource.dhall ./keymaps/ferris-canary-thumb-t.dhall'
    dhall text <<< './render/renderComboDefs.dhall ./keymaps/ferris-canary-thumb-t.dhall'
```

```
W C G M J     ' U K Ø Å
R S T H F     Y I E O A
V B L D X     Z P , . Æ
      SPC     N
```

```
Aptmak
/ w f p x  q l u y ;
r s t h b  j n a i o
v c g d k  z m , . '
           e
   ```
```text
v m l c p  x f o u j / 
s t r d y  . n a e i - 
z k q g w  b h ' ; , 
```
## Some Symbol Layers
```
~ + * # x    x # @ ^ .
< | - > \    ` { [ ] }
, ! % ? x    / & ( ) _
```

```text
@ _ [ ] ^    ! < > = &    
\ / { } *    ? ( ) - :
# $ | ~ `    + % " ' ;
```


Not needed because og combos:
- `=`
- ``
```text
, .         ! < > = &
7 5 3 1 G   ? 2 4 6 8
/     9     p 0   k j
```

```text
_ _ _ _ _   7 8 9 + -
_ _ _ _ _   4 5 6 , .
_ _ _ _ _   1 2 3 ;
```


