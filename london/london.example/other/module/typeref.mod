module TypeRef {

module A {

  type I = Int
  type M = I

}

module B {
   import A
   type J = I
   
   def x : J = 3 : Int
}

}