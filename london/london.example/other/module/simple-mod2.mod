module A12 {
  import BB1.CC
  def x = b // + 1
  def b = if c then 3 else "4"
}
/* module BB1 {
  module CC { 
    def c = false
  } 
} */
