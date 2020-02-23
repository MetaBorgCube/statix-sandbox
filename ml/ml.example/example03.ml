prog

module F (X :sig type t end) = struct type t = X.t end

module A = F(struct type t = int end)

let X = struct type t = int end 
 in struct type t = X.t end
 
//struct type t = (struct type t = int end).t end



end