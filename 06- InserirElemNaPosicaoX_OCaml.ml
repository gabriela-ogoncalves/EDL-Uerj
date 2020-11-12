(*
  Programa para insirir um elemento em uma determinada posição em uma lista. 
  Começaremos a contar os elementos da lista com 0. Se a posição for maior ou igual ao comprimento da lista, 
  vamos inserir o elemento no final. (O comportamento não é especificado se a posição for negativa.)   
*)

let rec insert_elem x n = function
  | [] -> [x]
  | h :: t as l -> if n = 0 then x :: l else h :: insert_elem x (n-1) t;;

insert_elem "novo elemento" 1 ["a";"b";"c";"d"];;
insert_elem "novo elemento" 3 ["a";"b";"c";"d"];; 
insert_elem 100000 2 [1; 2; 3; 4];;
insert_elem false 5 [true; true; true; true];;
insert_elem 0.1 0 [1.1; 2.1; 3.1; 4.1];;

(*
  val insert_elem : 'a -> int -> 'a list -> 'a list = <fun> :: para qualquer tipo de 'a, a função insert_elem 
  receberá um elemento do tipo 'a, numa determinada posição int que será adicionado numa lista de tipo'a e 
  retornará uma nova lista do tipo 'a.

  Retorno esperado: 
  - : string list = ["a"; "novo elemento"; "b"; "c"; "d"]
  - : string list = ["a"; "b"; "c"; "novo elemento"; "d"]
  - : int list = [1; 2; 100000; 3; 4]
  - : bool list = [true; true; true; true; false]
  - : float list = [0.1; 1.1; 2.1; 3.1; 4.1]
*)