module A {
  import B
  def p = new Point { x = 1, y = 2}
  > p.x + p.y
  def z = 3
  > with p do x + y + z
}

module B {
  record Point {
    x : Int
    y : Int
  }
}