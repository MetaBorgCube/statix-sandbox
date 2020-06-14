module Library {

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
  
}