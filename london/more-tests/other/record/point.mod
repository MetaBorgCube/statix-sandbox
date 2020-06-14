module PointWith {

//record Point { x : Int, y : Int }

type Point = { x : Int, y : Int }

def p = Point{x = 1, y = 2}

def y = true

> p.y

> with p  do y

} 