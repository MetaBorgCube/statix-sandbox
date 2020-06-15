module Types {
  type A = Int
  def a = 1 + b
  def b = 3
}

module TypesB {
  import Types
  $ Types.a 
  type B = Types.A
}
