module Module4 {
  
  module A { 
    module B {
      def a = 1
      def b = a
    }
  }
   
  module C { 
    import A; 
    import B    
    def b = a + 1
  } 
  
}