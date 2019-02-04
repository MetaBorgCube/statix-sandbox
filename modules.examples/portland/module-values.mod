module A {
  def x = 1
}
def m = @A
module B {
  import A
  def y = @A.x
}