module Client {
  
  import Library

  module Compute {
    type Result = { input : Int, output : Bool }
    def compute = fun(x) { 
           Result{ input = x, output = Odd@odd x }
        }
  }
  
  > (Compute@compute 3).output
  
}