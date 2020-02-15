> letrec 

    even = fun(x) {            
             if x == 0 then true else odd(x - 1)
           };
         
    odd = fun(x) {
            if x == 0 then false else even(x - 1)
          }
in
  even(5)
       