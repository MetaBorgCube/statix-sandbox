module RecursiveTypes {

  type List = {hd : Int tl: List} 
  
  def length = fun(xs : List) {
    if xs == null then 0 else length xs.tl
  }
  
  > List{hd = 1, tl = null}
  
  def nil  = null : List
  
  def cons = fun(x){fun(xs : List){ List{hd = x, tl = xs} } }
  
  > cons 1 nil

  > cons 2 (null : List)
  
  > cons 3 null
  
  > length (cons 2 null)
  
  //def l0 : List = length (cons 2 null)
  
  def l1 : List = (cons 2 null)
  
  def l2 : List -> List = cons 2
  
  
  > length (cons 1 (cons 2 null))

}