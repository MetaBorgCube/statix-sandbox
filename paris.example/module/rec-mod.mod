module MutualImportTyped {

module A {
  import B
  def z : Int = 3
  def x : Int = y + z
}

module B {
  import A
  def y : Int = z * 2
}

}