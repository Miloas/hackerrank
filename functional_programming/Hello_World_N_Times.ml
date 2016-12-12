let rec f n = 
  if n <=0 then () else (f (n-1); print_endline "Hello World")

let () = 
  let n = read_int () in f n