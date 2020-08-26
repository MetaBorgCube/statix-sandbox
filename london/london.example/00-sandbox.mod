module SandBox {
 
  module A {
    def a = 1;
    def a = 3
    def b = 2;
    def c = 3 + a + b
    def foo = 1 
  } 
 
  
  module B {
    import A
    def a = 4;
    import D;
    def d = a + b + c
  }
  
  module C {
    import B; 
    def e = a + b + c + e + foo
  }
  
  module D {
    def a = 6
  }
  
  module H {
    def a = true;
    def a = 3;
    def aljd  = 5
  }
  
  module E {
    def bcd = 1
    module E { 
      import H;
      def lsajd = 4;
      def f = 1
    }
  }
  
  module G { 
    import E;
    import E
    def g = f + a + bcd
  }

}