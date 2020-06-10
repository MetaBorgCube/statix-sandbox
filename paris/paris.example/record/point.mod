module PointWith {

record Point { x : Int, y : Int }

def p = Point{x = 1, y = 2}

def y = true

> with p  do y

}