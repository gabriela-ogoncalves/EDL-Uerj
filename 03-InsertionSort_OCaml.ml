(* Este é um exemplo em OCaml de uma função de ordenação *)

let rec sort = function
  | [] -> []
  | x :: l -> insert x (sort l)
and insert elem = function
  | [] -> [elem]
  | x :: l -> if elem < x then elem :: x :: l
      else x :: insert elem l;;

(* Aqui chamaremos a função, passando diferentes tipos de listas. 
A função paramétrica "sort" atuará da mesma forma para cada um dos tipos. *)
sort [5; 4; 10; 6; 2; 1; 0];;
sort ["g";"a";"b";"r";"i";"e";"l";"a"];;
sort [1.0; 1.5; 1.3; 1.9; 1.2; 1.1; 1.7];;

(* 
  Os retornos para cada chamada são, respectivamente:
  - : int list = [0; 1; 2; 4; 5; 6; 10] 
  - : string list = ["a"; "a"; "b"; "e"; "g"; "i"; "l"; "r"]
  - : float list = [1.; 1.1; 1.2; 1.3; 1.5; 1.7; 1.9]
*)
