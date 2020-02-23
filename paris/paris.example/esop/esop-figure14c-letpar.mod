module ESOP14c {

def a = 0
def b = 1
def c = 2

> letpar
    a = c;
    b = a;
    c = b
  in
    a + b + c
  
}