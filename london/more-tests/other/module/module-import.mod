module ModuleImport {

def c = 0

module A {
  import B
  def a = b + c
}

module B {
  def b = 2
} 


}