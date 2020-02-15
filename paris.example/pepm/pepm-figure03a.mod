module PEPM03 {

// lexical scoping

def n = true
def f = fun(n: Int) {
          f(n)
        }
        
}