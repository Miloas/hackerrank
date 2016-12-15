let () = 
  let t = read_int () in 
  for i = 0 to t-1 do
    let s = read_line () in 
    let rec f n cur = 
      if n < 0 then () else (
        let nxt = (String.sub cur 1 (String.length cur - 1))^(String.make 1 cur.[0]) in 
        if n = 0 then print_string nxt else (print_string nxt;print_char ' ');
        f (n-1) nxt
      ) in 
    f (String.length s - 1) s;print_newline ()
  done;;