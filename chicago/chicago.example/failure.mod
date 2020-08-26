module failure {
 
  module A {
    def a = 1;
    def a = 3
    def b = 2;
    def c = 3 + a + b
    def foo = 1  
  } 
  
  module B {
    import A
    def a = 4 + a
    def e = a + 5;
    import D;
    def d = a + b + c
  }
  
  module C {
    import B;
    def e = a
  } 
  
  module D {
    def a = 6  
  }  

} 