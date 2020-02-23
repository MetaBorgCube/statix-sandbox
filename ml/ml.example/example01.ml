prog

  let x = 1 

  module 
    Point = 
      (struct
        let x = 1
        let inc = \y.x
      end : sig
        val x : ()int
      end)

end 