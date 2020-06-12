module LexicalScopeA {
  > let a = 1 in
	let b = 2 in
	let c = 3 in 
	  a + b + c
}

module LexicalScopeB {
  > let a = 1 in
	let b = 2 in
	let c = 3 in 
	  a + b + c
} 


module LexicalScopeC {
  >	let a = 1 in
	let a = 2 in 
	let b = 3 in 
	  a
}
