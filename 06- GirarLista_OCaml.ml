(*
   O objetivo desse programa é girar uma lista N posições para esquerda, de acordo com os parâmetros passados.
*)

let split list n =
  let rec aux i acc = function
    | [] -> List.rev acc, []
    | h :: t as l -> if i = 0 then List.rev acc, l
        else aux (i-1) (h :: acc) t  in
  aux n [] list
  
let rotate list n =
  let len = List.length list in
  let n = if len = 0 then 0 else (n mod len + len) mod len in
  if n = 0 then list
  else let a, b = split list n in b @ a;;

rotate ["a"; "b"; "c"; "d"; "e"] 3;;
rotate [1; 2; 3; 4; 5; 6; 7; 8] (-2);;
rotate ['a'; 'b'; 'c'] (-1);;

(*
  val split : 'a list -> int -> 'a list * 'a list = <fun> :: para qualquer tipo de 'a, a função split receberá 
  um inteiro e uma lista de tipo 'a, transformando em um par de lista.
  val rotate : 'a list -> int -> 'a list = <fun> :: para qualquer tipo de 'a, rotate recebe uma lista e um inteiro
  e retorna uma lista do tipo 'a rotacionada. Ela utiliza a função split.

Retorno esperado:
- : string list = ["d"; "e"; "a"; "b"; "c"]
- : int list = [7; 8; 1; 2; 3; 4; 5; 6]
- : char list = ['c'; 'a'; 'b']
*)