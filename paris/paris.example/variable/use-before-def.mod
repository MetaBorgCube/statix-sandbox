module UseBeforeDef {

> a + b + c 

def a = 0
def c = a + b
def b = a + 1

}