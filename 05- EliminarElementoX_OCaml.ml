(*
  Programa para eliminar o enésimo elemento de uma lista qualquer.
*)

let drop list n =
  let rec aux i = function
    | [] -> []
    | h :: t -> if i = n then aux 1 t else h :: aux (i+1) t  in
  aux 1 list;;

drop ["a";"b";"c";"d";"e";"f";"g";"h";"i";"j"] 3;;
drop [1; 2; 3; 4; 5; 6; 7; 8; 9; 10] 4;;
drop [false; true; false] 2;;

(*
  val drop : 'a list -> int -> 'a list = <fun> :: para qualquer tipo de 'a, juntamente com um int, drop 
  retorna uma uma lista do tipo 'a.

  Retorno esperado:
  - : string list = ["a"; "b"; "d"; "e"; "g"; "h"; "j"]
  - : int list = [1; 2; 3; 5; 6; 7; 9; 10]
  - : bool list = [false; false]
*)