(* 
  Neste programa há duas funções: uma para descobrir o último elemento de uma  lista e a outra para descobrirmos
  os dois últimos elementos de uma lista. Nos dois casos há o uso da funcionalidade de polimorfismo paramétrico, 
  pois as funções agem da mesma forma para qualquer tipo de dado.
*)

let rec last = function
  | [] -> None
  | [x] -> Some x
  | _ :: t -> last t;;

last [ "a" ; "b" ; "c" ; "d" ];;
last [1; 2; 3; 4; 5];;
last [9.55; 5.42; 8.75];;

(*
  val last : 'a list -> 'a option = <fun> :: para qualquer tipo de 'a, last retorna uma lista do tipo 'a.

  Retornos:
  - : string option = Some "d"
  - : int option = Some 5
  - : float option = Some 8.75
*)

let rec last_two = function
  | [] | [_] -> None
  | [x;y] -> Some (x,y)
  | _::t -> last_two t;;

last_two [ "a" ; "b" ; "c" ; "d" ];;
last_two [1; 2; 3; 4; 5];;
last_two [9.55; 5.42; 8.75];;

(*
  val last_two : 'a list -> ('a * 'a) option = <fun> :: para quaisquer tipos 'a e 'a, last_two retorna um par 
  de elementos do tipo 'a.

  Retornos:
  - : (string * string) option = Some ("c", "d")
  - : (int * int) option = Some (4, 5)
  - : (float * float) option = Some (5.42, 8.75)
*)
