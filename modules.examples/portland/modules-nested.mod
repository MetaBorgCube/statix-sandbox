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
    def y = 3
    > x + 1 + z
    import B.BB
  }
}