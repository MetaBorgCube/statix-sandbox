> letrec
    odd = fun(x : Int) {
            if x == 0 then false 
            else even(x - 1)
          };
    even = fun(x : Int) {
            if x == 0 then true 
            else odd(x - 1)
          }
  in
    even(3)
  