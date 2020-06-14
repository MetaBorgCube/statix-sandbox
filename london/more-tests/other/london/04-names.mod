module NamesA {
	def a = 0
	def b = a + 1
	def c = a + b
	> a + b + c 
}

module NamesB {
	def a : Int = 0
	def b : Int = a + 3
	def c : Int = a + b
	> a + b + c 
}

module NamesC { // type mismatch
	def a = true
	def b : Int = a
	def c = 1 + b
	def e = b && c
}

module NamesD { // undeclared variable
	def a = 0
	def b = a + 1
	def c = a + d
	> a + e + c 
}

module NamesE { // duplicate definition
	def a = 0
	def b = a + 1
	def b = 2 + a
	def c = 3
	> a + b + c 
}

module NamesF { // Use before def
	> a + b + c 
	def a = 0
	def c = a + b
	def b = a + 1
}