(*
  Programa para extrair um determinado número de elementos selecionados aleatoriamente de uma lista.
  Os itens selecionados serão devolvidos em uma lista. 
*)

let rand_select list n =
  let rec extract acc n = function
    | [] -> raise Not_found
    | h :: t -> if n = 0 then (h, acc @ t) else extract (h::acc) (n-1) t
  in
  let extract_rand list len =
    extract [] (Random.int len) list
  in
  let rec aux n acc list len =
    if n = 0 then acc else
      let picked, rest = extract_rand list len in
      aux (n-1) (picked :: acc) rest (len-1)
  in
  let len = List.length list in
  aux (min n len) [] list len;;

rand_select ["a";"b";"c";"d";"e";"f";"g";"h"] 4;;
rand_select [1; 2; 3; 4; 5; 6; 7; 8] 2;;
rand_select ['c'; 'a'; 'r'; 'r'; 'o'] 3;;

(*
  val rand_select : 'a list -> int -> 'a list = <fun> :: para uma lista de qualquer tipo, rand_select eceberá
  um inteiro, que corresponderá ao tamanho da nova lista, e uma lista do tipo 'a. Retornará uma lista de tipo
  'a.

  Retorno esperado em termos de quantidade de itens na lista, visto que os resultados são gerados aleatoriamente:
  - : string list = ["b"; "g"; "c"; "d"]
  - : int list = [7; 5]
  - : char list = ['r'; 'r'; 'o']
*)