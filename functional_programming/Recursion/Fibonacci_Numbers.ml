let f n = 
  let rec aux m a b = 
    if m = 1 then a else aux (m-1) b (a+b) in
  aux n 0 1

let () = 
  let n = read_int() in 
  print_int (f n)