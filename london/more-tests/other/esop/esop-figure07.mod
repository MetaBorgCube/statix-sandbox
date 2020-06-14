module ESOP7 {

def c = 4
module A {
  import B
  def a = b + c
}
module B {
  import C
  def b = 0
}
module C {
  def b = 1
  def c = b
} 

}
