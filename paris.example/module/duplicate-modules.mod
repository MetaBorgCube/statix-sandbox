module foo {
  def b = true
  module bar {
    def a = 1
  }
  module bar {
    def a = true
  }
  module baz {
    def b = 3
  }
}
 
module bla {
  import foo.bar
  def e = a + 4 
  def x = foo.baz:b + 4 
}

//module baz {
//  def b = foo.bar.a
//}