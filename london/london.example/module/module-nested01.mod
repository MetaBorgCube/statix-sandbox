module ModuleNested01 {

module A {
  module A {
    def b = 1
  }
}
module C {
  import A
  import A
  def c = b
}

}