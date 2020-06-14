module Fac {

def fac = 
  letrec 
    f : Int -> Int = fun(n: Int) {
      if(n == 0) then 1 
      else n * f(n - 1)
    } 
   in f 
   
def n = fac 5

} 

