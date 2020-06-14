module ModuleNestedAmb {

module A {
  module B {
    def b = 1
  }
}
module C {
  import A
  import B
  def c = b
}

}