module A {
  import B.C
  def x = (b + 1) * -42
  def b = (if c then
    3
  else
    4) + 5
}
module B {
  module C {
    def c = false
  }
}