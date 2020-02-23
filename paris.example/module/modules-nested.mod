module ModulesNested01 {

module A {
  module AA {
    import C.CC
    def x = 1
    > y + 3
  }
}
module B {
  module BB {
    import A.AA
  }
}
module C {
  module CC {
    import B.BB
    def y = 3
    > x + 1 //+ z
  }
}

}
 