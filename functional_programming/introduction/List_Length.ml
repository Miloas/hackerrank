let rec read_lines () = 
  try let line = read_line() in 
    int_of_string (line) :: read_lines()
  with 
    End_of_file -> []

let () = 
  let arr = read_lines() in 
  print_int (List.length arr);;