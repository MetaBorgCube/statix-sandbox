def a = 1 

def b = a + 23 * 4 

$ let x = a + b in x - 3

$ let 
    x = a; 
    y = x 
  in x + y

$ letpar 
    x = 1; 
    y = a 
  in x + y 

$ letrec 
    x = if false then y else a; 
    y = x + 3 
  in x + y
  
  