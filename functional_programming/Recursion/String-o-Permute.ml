let () =
  let n = read_int () in 
  for i = 1 to n do
    let s = read_line() in 
    let rec f n = if n+1>=String.length s then () else begin
        print_char s.[n+1];
        print_char s.[n];
        f (n+2)
      end in
    f 0;print_newline ()
  done;;
