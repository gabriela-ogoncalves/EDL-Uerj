(* Programa para juntar duas listas, passando ambas como parâmetro *) 

let append l1 l2 =
  let rec loop acc l1 l2 =
    match l1, l2 with
    | [], [] -> List.rev acc
    | [], h :: t -> loop (h :: acc) [] t
    | h :: t, l -> loop (h :: acc) t l
  in
  loop [] l1 l2;;

append ['a'; 'b'] ['c'; 'd'];;
append [1; 2; 3; 4; 5; 6; 7] [8; 9];;
append [9.9; 9.8; 9.7; 9.6] [9.5];;

(*
  val append : 'a list -> 'a list -> 'a list = <fun> :: para qualquer lista de tipo genérico 'a, a função 
  append receberá duas listas de tipo 'a e retornará uma única lista de tipo 'a.

  Retorno:
  - : char list = ['a'; 'b'; 'c'; 'd']
  - : int list = [1; 2; 3; 4; 5; 6; 7; 8; 9]
  - : float list = [9.9; 9.8; 9.7; 9.6; 9.5]
*)