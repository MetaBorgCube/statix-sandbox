prog

module Access = (
  functor (G : sig type graph type vertex end) struct 
    module VerticesSet = struct type set = int list end 
    let run = \g.\v.v
  end
  :
  functor (G: sig type graph type vertex end) sig
    module VerticesSet : sig type set end
    val run: G.graph -> G.vertex -> VerticesSet.set
  end
  )
  
module G = struct 
  type graph = (int, int)pair list 
  type vertex = int 
end 
  
module Foo = Access(G)

let foo = Foo.run

type t = Access(G).VerticesSet.set


end