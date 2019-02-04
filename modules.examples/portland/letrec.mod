def a = 0
def b = 1
def c = 2

> letrec
    a : Int = c;
    b : Int = a;
    c : Int = b
  in
    a + b + c
  