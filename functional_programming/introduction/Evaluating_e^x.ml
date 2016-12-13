let rec f n x current acc =
    if n = 11 then acc else  f (n+1) x (current *. x /. (float_of_int n)) (acc +. current);;

let () = 
    let n = read_int () in 
        for i = 0 to (n-1) do 
            let x = read_float () in 
                print_float (f 1 x 1.0 0.0);print_newline()
        done