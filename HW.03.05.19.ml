let ent n =
    let rec ent' a =
	if a < n then (print_string " "; ent' (a + 1)) else print_string " "
    in ent' 1
;;

let print_arr n =
     let rec arr' a b =
	if a == n then print_string "*"; else (print_string "*\n"; ent b; arr' (a + 1))
    in arr' 1 
;;

let print_arrow n =
    let rec arr a =
	if a == n then (print_arr a) else (print_string "*\n"; ent a; arr (a + 1))
    in arr 1 (n - 1)
;;

let x = read_int ();;

print_arrow x;; 