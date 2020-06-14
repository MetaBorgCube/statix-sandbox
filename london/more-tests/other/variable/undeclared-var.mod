module UndeclaredVar {

def a = 0
def b = a + 1
def c = a + d
> a + e + c 

}