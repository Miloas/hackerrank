let rec read_lines () = 
  try let line = read_line() in 
    int_of_string (line) :: read_lines()
  with 
    End_of_file -> []

let () = 
  let arr = read_lines () in 
  let ans = List.rev arr in 
  List.iter (fun x -> print_int x; print_newline()) ans;;