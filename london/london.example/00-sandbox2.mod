module SandBox2 {
 
  module E {
    module A { 
    }
    def b = 1
  }
  module B { 
  }
  
  module G { 
    import E
    def a = b
    import B
  }

}