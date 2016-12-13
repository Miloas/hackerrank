let rec print_list = function
  | [] -> print_char(' ')
  | [x] -> print_int(x);print_newline()
  | x::t -> print_int(x);print_char(' ');(print_list t)

let construct_new_list old = 
  let rec aux = function
    | a::(b::_ as t) -> (a+b)::(aux t)
    | smaller -> [1] in
  1::(aux old)

let rec f n current = 
  if n = 0 then () else ((print_list current);(f (n-1) (construct_new_list current)))

let () = 
  let n = read_int () in 
  f n [1]