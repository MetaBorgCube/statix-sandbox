def a = 1
module B {
}
module C {
  def a = 2
  module D {
    import B
    def e = a
  }
}
