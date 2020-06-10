module HigherOrder {

type List = {
  hd : Int,
  tl : List
}
def nil  = null : List
def cons = fun(x : Int){fun(xs : List){List{hd = x, tl = xs}}}
def empty = fun(xs : List){ xs == null }

def map = fun(f){fun(xs){
            if empty xs then nil else cons(f xs.hd)(map f xs.tl)
          }}
          
def inc = fun(x){ x + 1 }

> map inc (cons 1 (cons 2 nil))

}