let rec read_lines () = 
  try let line = read_line() in 
    int_of_string (line) :: read_lines()
  with 
    End_of_file -> []

let () = 
  let arr = read_lines() in
  print_int (List.fold_left (fun acc x -> if ((x+100) mod 2 = 1) then acc+x else acc) 0 arr);;