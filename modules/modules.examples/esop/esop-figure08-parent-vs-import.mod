def a = 1
module A {
  def a = 2
  def b = 3
}
module C {
  import A
  def b = a
  def c = b
}
