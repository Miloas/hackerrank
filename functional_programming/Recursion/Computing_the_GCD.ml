let rec gcd a b = 
  if b = 0 then a else gcd b (a mod b) 

let () = 
  let (a, b) = Scanf.scanf "%d %d" (fun a b -> (a, b)) in 
  print_int (gcd b a)