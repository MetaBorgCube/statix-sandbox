module Records {

module A {

  type List = {
    hd : Int
    tl : List
  }
  
  > (List{hd = 1, tl = null} == null) : Bool
  
  def test1 : Int -> Bool = fun(xs) { true }
  
  def test = fun(xs: Bool) : Bool { true : Bool }
  
//  def empty = fun(xs: List) : Bool { (xs == null) : Bool }
  
  def empty = fun(xs) { xs == null }
  
  def tail = fun(xs : List) : List { 
    if !(empty xs) then xs.tl else null
  }
  
  def length = fun(xs : List) {
    if empty xs then 0 else 1 + (length (xs.tl))
  }

}
 
 
}