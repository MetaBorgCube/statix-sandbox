module RecursiveTypesF {
  type List = {hd : Int,
               tl : List}
  def length = fun(xs : List) {
    if xs == null then
      0
    else
      lengthxs.tl
  }
  >List { hd = 1,tl = null }
  def nil = null : List
  def cons = fun(x) {
    fun(xs : List) {
      List { hd = x,tl = xs }
    }
  }
  >cons1nil
  >cons2null : List
  >cons3null
  >length(cons2null)
  def l1 : List = cons2null
  def l2 : List -> List = cons2
  >length(cons1(cons2null))
}