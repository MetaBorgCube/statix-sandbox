//module Functions {

def inc = fun(x) x + 1

def two = inc 1 

def even = fun(x) if x == 0 then true else odd (x - 1) 

def odd = fun(x) if x == 0 then false else even (x - 1)

def impl : Bool -> Bool -> Bool = fun(x) fun(y) !x || y  

def xor = fun(x: Bool) fun(y: Bool) : Bool x && !y || !x && y  

$ xor (1 == 2) (1 > 2)

type Ord = Int -> Int -> Bool

def lt : Ord = fun(x) fun(y) !(x > y)   

$ if lt 1 4 then false else true

//}