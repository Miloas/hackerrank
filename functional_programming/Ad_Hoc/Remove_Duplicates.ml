let () = 
  let s = read_line () and h = Hashtbl.create 26 in 
  for i=0 to String.length s - 1 do 
    if Hashtbl.mem h s.[i] then () else begin 
      Hashtbl.add h s.[i] true;
      print_char s.[i]
    end
  done