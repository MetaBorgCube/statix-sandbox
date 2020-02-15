module DuplicateDefsA {

 def a = 1
 
 module A {
   def a = 2
 }
 
 module B {
   def b = 2// dup
//   def b = 4 // dup
 }
 
 module C {
   module D {} // dup
//   module D {} // dup
 }
 
 module E {
   module F { def a = 1} // shadows top.a
   module G { 
     module F { def a = true }
     import F 
     def f = a + 3
   }
 }

}