module B {
  module C {
    def c = D.f
    def d = c 4
  }
  module D {
    def f = fun(x: Int) { x + 1 }
  }
}