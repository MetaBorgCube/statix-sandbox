record Point {
  x : Int
  y : Int
}

def p : Point = new Point { x = 1, y = 2}

> p.x + p.y

def z = 3

> with p do x + y + z
