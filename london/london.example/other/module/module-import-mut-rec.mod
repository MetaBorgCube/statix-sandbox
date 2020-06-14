module ModuleImportMutRec {

def c = 0
module A {
  import B
  def a = b + c
}
module B {
  import A
  def b = 2 
  def d = a + c
} 


}