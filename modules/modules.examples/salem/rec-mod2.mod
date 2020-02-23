module A {
  import B
  def z = y
  def a = !z
}

module B {
  import A
  def y = z
}