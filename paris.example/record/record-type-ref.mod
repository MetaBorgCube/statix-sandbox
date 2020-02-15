module RecordType {

record Point {
  x : Int,
  y : Int
}

def translate : Point -> Point -> Point
  = fun(p: Point){ fun(d: Point) {
      new Point{ 
        x = p.x + d.x, 
        y = p.y + d.y 
      }
    } }

def p : Point = new Point { x = 1, y = 2}

> translate(p)(p)

}