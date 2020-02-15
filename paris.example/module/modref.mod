module ModuleRef {

module A {
  def x : Int = 1
}
module B {
  > A:x + 2
}
> A:x
> C:x

}