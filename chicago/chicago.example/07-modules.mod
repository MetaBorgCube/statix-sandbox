module Library{

  module Sig {
    type Pred = Int -> Bool
  }   
  
  type P = Sig.Pred
   
  module Odd {
    import Even
    def odd : P = 
        fun(x) if x == 0 then false else even (x - 1)
  } 

  module Even {
    import Odd
    def even : Sig.Pred =
        fun(x) if x == 0 then true else odd (x - 1) 
  }
}

module Application {
  
  import Library.Even 
  //def alias = Library  // error

  $ even 42
  $ Library.Odd.odd 45  
}
