module A {
  module B {
    def x = 1
  }
}
module B {
  module A {
    def y = 2
  }
}
module C {
  import A
  import B
  def z = x + y
}

