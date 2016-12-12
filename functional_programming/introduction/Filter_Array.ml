let rec read_lines () =
  try let line = read_line () in
    int_of_string (line) :: read_lines()
  with
    End_of_file -> []

let f x arr = List.filter (fun item -> item < x) arr

let () = 
  let x::xs = read_lines() in
  let ans = f x xs in 
  List.iter (fun x -> print_int x; print_newline ()) ans;;