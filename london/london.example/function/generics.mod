module Generics {

type ID = [A](A -> A)
 
def id = [A]fun(x: A): A { x } 

def idInt : Int -> Int = id[Int]

> idInt 1

def idBool : Bool -> Bool = id[Bool]

> id[Bool] true
> id[Int] 1 
> id[Int] true

type L = [A][B]{hd : A, tl : B}

type List = [A]{hd : A, tl : List[A]}

//def cons = [A]fun(x: A){fun(xs: L[A]

//def map = [A][B]fun(f : A -> B){fun(xs: List[A]): List[B]{
//          if xs == nul then null
//          else 
//            {hd = f xs.hd, tl = map f xs.tl}
//        }
//      


} 