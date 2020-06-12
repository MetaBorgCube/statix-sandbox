module Names {

  module Even {
    import Odd
    def even = fun(x) {            
         if x == 0 then true else odd(x - 1)
        }
  }
  
  module Odd {
    import Even
    def odd = fun(x) {
          if x == 0 then false else even(x - 1)
        }
  }

  module Compute {
    type Result = { input : Int, output : Bool }
    def compute = fun(x) { 
           Result{ input = x, output = Odd@odd x }
        }
  }
  
  > (Compute@compute 3).output
  
}


