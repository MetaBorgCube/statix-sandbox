module ParentOrImport {

def b = 0
module A {
  import B
  def a = b
}
module B {
  def b = 2 
}


}