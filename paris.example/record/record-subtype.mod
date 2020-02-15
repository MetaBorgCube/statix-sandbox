module RecordSubtype {

type Point = {x : Int, y : Int} 

type ColorPoint = {x : Int, y : Int, color: Int}

def x = fun(p : Point){ p.x }
def y = fun(p : Point){ p.y }

def move = fun(p : Point){ fun(q : Point){
             Point{x = p.x + q.x, y = p.y + q.y} 
           } }

//> move(ColorPoint{x = 1, y = 2, color = 2})(Point{x = 1, y = 1})

} 