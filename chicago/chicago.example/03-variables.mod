module Variables {

def a = 1 

def b = a + 23 * 4 

$ let x = a + b in x - 3

def x = 3

$ let 
    x = x; 
    y = x;
    x = 3
  in x + y

$ letpar 
    x = 1; 
    y = a
    //; x = 3
  in x + y 

$ letrec 
    x = if false then y else a; 
    y = x + 3 
  in x + y
  
}
  