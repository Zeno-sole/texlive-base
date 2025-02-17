.PS
# Btree.m4
# One way to draw a binary tree using pic macros
gen_init
sinclude(tst.dim)
s_init(Ttree)

circlerad = 0.30

define n { [C: circle fill_(0.9) $1
            if "$2" != "" then {
              L: $2 with .ne at C.s-(circlerad/20, circlerad/2)
              line from C to L.C chop }
            if "$3" != "" then {
              R: $3 with .nw at C.s+(circlerad/20,-circlerad/2)
              line from C to R.C chop }
            ] }

# Redrawn from T. A. Standish, "Data Structure Techniques," Addison-Wesley 1980.
# Node data:
define Sirius { n("Sirius",Canopus,Vega) }
define Canopus { n("Canopus",AlphaCentauri,Capella) }
define AlphaCentauri { n("Alpha" "Centauri",Achernar,Arcturus) }
define Arcturus { n("Arcturus",Betelgeux) }
define Betelgeux { n("Betelgeux",BetaCentauri) }
define Capella { n("Capella",Rigel) }
define Rigel { n("Rigel",Procyon) }
define Achernar { n("Achernar") }
define BetaCentauri { n("Beta" "Centauri") }
define Procyon { n("Procyon") }
define Vega { n("Vega") }

# Build the tree from the root
S: Sirius
#.PE

#.PS
## Ttree.m4
## A binary tree using m4
#gen_init
#sinclude(tst.dim)
#s_init(Ttree)

T: [
#                           `Node(no in row, head [location],
#                              displacement of top of body (.n) wrt head,
#                              body Node 1, body Node 2, ...) '
define(`Node',`
  Head`$1': `$2'
  ifelse(`$3',,,`Body`$1': [
    Loopover_(`v',`v; define(`m4ct',m4Lx)',shift(shift(shift($@))))
    ] with .n at Head`$1' + `$3'
  connect(`$1',m4ct)')')

define(`connect',`Bot: move from Head$1.sw to Head$1.se
for_(1,`$2',1,
 `Top: move from Body$1.Head`'m4x.nw to Body$1.Head`'m4x.ne
  Move: move from Head$1 to Body$1.Head`'m4x
  if Bot.len*Top.len*Move.len > 0 then {
    line from Intersect_(Move,Top) to Intersect_(Move,Bot)}')')

  vsep = 0.75

  Node(1,s_box($`h(h(h(x_1,x_2),h(x_3,x_4)),h(h(x_5,x_6),h(x_7,x_8)))'$),
     (0,-vsep),
     Node(1,s_box($`h(h(x_1,x_2),h(x_3,x_4))'$),
        (0,-vsep),
        Node(1,s_box($`h(x_1,x_2)'$),
           (0,-vsep),
           Node(1,s_box($`x_1:=((A,pk_A),h_1)'$)),
           Node(2,s_box($`x_2:=((B,pk_B),h_2)'$) \
               with .n at last "".ne+(0.2,-vsep*2/3))),
        Node(2,s_box($`h(x_3,x_4)'$) with .nw at Head1.ne+(Body1.wid/2+0.1,0),
           (0,-vsep),
           Node(1,s_box($`x_3:=((A,pk_A^\prime),h_3)'$)),
           Node(2,s_box($`x_4:=((D,pk_D),h_4)'$) \
               with .n at last "".ne+(0.2,-vsep*2/3)))),
     Node(2,s_box($`h(h(x_5,x_6),h(x_7,x_8))'$) \
               with .nw at Head1.ne+(Body1.wid/2,0),
        (0,-vsep),
        Node(1,s_box($`h(x_5,x_6)'$),
           (0,-vsep*5/4),
           Node(1,s_box($`x_5:=((E,pk_E),h_5)'$)),
           Node(2,s_box($`x_6:=((H,pk_H),h_6)'$) \
               with .n at last "".ne+(0.2,-vsep*2/3))),
        Node(2,s_box($`h(x_7,x_8)'$) with .nw at Head1.ne+(Body1.wid/2+0.1,0),
           (0,-vsep*5/4),
           Node(1,s_box($`x_7:=((D,pk_D^\prime),h_7)'$)),
           Node(2,s_box($`x_8:=((K,pk_K),h_8)'$) \
               with .n at last "".ne+(0.2,-vsep*2/3))),
        Node(3,s_box($`h(x_9)'$) at 0.5 between Head1 and Head2)))
  ] with .n at S.s + (1.2,0.5)

.PE
