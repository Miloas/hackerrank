let make_array n = 
  let rec f m = 
    if m = 0 then [] else 1::f (m-1) in
  f n 


