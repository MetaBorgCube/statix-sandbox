module PEPM03b {

// mutually recursive imports

module A {
  import B
  def a = 4
  def c = b + 4
}
module B {
  import A 
  def b = a + 3
}

}