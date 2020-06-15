type Point = { x : Int, y : Int }

def p = Point{x = 0, y = 0}

def mkPoint = fun(x) fun(y) Point{x = x, y = y}

def add = fun(p: Point) fun(q: Point) 
  Point{ x = p.x + q.x, y = p.y + q.y } 
  
$ add p Point{x = 1, y = 3}
          
type List = {hd : Int, tl : List}

def nil = null
def cons = fun(x) fun(xs: List) 
  List{hd = x, tl = xs}

def map = fun(f) fun(xs: List) 
  if xs == null then null else cons(f xs.hd)(map f xs.tl)
  
$ map (fun(x) x + 1) (cons 1 (cons 2 null))