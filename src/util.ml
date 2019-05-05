let rec english_join = function
  | [] -> ""
  | [x] -> x
  | [x; y] -> x ^ " and " ^ y
  | [x; y; z] -> x ^ ", " ^ y ^ ", and " ^ z
  | x :: ys -> x ^ ", " ^ english_join ys
