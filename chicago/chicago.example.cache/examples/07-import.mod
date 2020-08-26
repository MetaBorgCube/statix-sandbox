module Import {


module A {
  def a = 1
}
module B {
  import A
  
  def b = a + C.D.d 
} 

module C {
  def c = 1
  module D {
    def d = 1
  }
}

module E { 
  module D {
    def e = true
  }
} 

}