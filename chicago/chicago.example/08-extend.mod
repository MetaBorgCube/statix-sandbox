module Extend {

  module Library {
    def zero = 0
  }

  module Client1 {
    //def Library.inc := fun(x) x + 1
  }
  
  module Client2 {
    import Library
  }

}