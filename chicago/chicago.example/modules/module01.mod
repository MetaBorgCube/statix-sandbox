module Module01 {

module A1 { 
  import B1.B2
  def a1 = 3 + B1.B2.C.c
  module a1 { }
}

module A2 {
}

module B1 {
//  import A1
  module B2 {
    //def b = A1 
    import A2
    module C {
      //import b
      def c = a1 + 1 
      def d : Bool = 1
    } 
  }
  import B1.B2.C
  //def d = c
} 

//def a = B1.B2

module D2 {
  def d = 3
}

module E3 {
  import D2
  def e = d + 4 
  //def m = (fun(x) a) 1
//  def n = (fun(x) a).a1 + 1
//  def l = m.C
//  def k = a.C.c
}

}
