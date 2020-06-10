
def inc = function x -> x + 1
def dec = function x -> x - 1
  
def len = function nil -> 0 
                 | cons x xs -> 1 + len xs
          
def foo = function x -> function y -> 1 | z -> x + 2  

def sum = function x y -> x + y 

def z = sum 1 3
          
def foo = function x -> (function y -> 1) | z -> x + 2  
  
//def voodo = function x -> do x; y; z; do a; b; c 
//            | y z -> do a + do b + c; d
//  

run   inc 3