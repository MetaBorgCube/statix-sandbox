module ModuleRef {

module A {
  def x : Int = 1
}
module B {
  > A@x + 2 : Int
}
> A@x
//> C@x

}