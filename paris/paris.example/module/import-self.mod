module ImportSelf {

def c = true
def d = 2
module A {
  //import A
  //import A.A
  def a = 1
  def b = a + c + d
  
  module A { 
   import A 
   def a = true
   def c = 5 + b + d
  }
}

}