module ESOP9 {

def a = true
module B {
}
module C {
  def a = 2
  module D {
    import B
    def e = a + 1
  }
}

}