let rec read_lines () =
    try let line = read_line () in
        int_of_string (line) :: read_lines()
    with
        End_of_file -> []

let f n arr = 
    let rec g n a =
        if n = 0 then [] else (a::(g (n-1) a)) in
        List.fold_left (fun acc x -> acc @ (g n x)) [] arr 
         

let () =
    let n::arr = read_lines() in
    let ans = f n arr in
    List.iter (fun x -> print_int x; print_newline ()) ans;;
