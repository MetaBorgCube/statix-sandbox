module A {

  type List = {
    hd : Int
    tl : List
  }
  
  def empty = fun(xs: List) { xs == null }
  
  def size = fun(xs) { 
    if xs == null then 0 else 
  }

}

module 