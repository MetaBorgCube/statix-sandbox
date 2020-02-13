module A {
  import B
  def z = 3
  def x = y + z
}
module B {
  import A
  def y = z * 2
}