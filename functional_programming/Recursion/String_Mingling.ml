let () =
  let s1,s2 = Scanf.scanf ("%s\n%s") (fun a b -> (a,b)) in
  for i = 0 to String.length s1 - 1 do 
      print_char s1.[i];
      print_char s2.[i]
  done

