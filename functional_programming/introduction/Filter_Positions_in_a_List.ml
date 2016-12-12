let rec read_lines () = 
    try let line = read_line () in 
        int_of_string (line) :: read_lines()
    with 
        End_of_file -> []
        
let f arr = 
    let rec aux flag = function
        | x::xs -> if flag = 0 then x::(aux 1 xs) else aux 0 xs
        | smaller -> smaller in
        aux 1 arr

let () = 
    let arr = read_lines () in 
    let ans = f arr in 
    List.iter (fun x -> print_int x;print_newline()) ans;;