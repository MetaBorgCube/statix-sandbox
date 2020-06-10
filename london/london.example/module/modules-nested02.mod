module ModulesNested {

module A {
  module AA {
    import C.CC
    def x = 1
    > y + 3
  }
}
module C {
  module CC {
    def y = 3
  }
}

}