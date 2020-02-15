module Mod {

module A {
  import B   
  def p : Bool = !q 
}
module B {
  def q : Bool = true
}

} 