(*
   Neste programa há 2 funções escritas em OCaml. A primeira (rev) reverte uma lista, enquanto a segunda 
   (is_palindrome) verifica se uma lista é palíndroma, ou seja, verifica se o seu reverso é ela própria.
*)


let rev list =
  let rec aux acc = function
    | [] -> acc
    | h::t -> aux (h::acc) t in
  aux [] list;;

rev ["a" ; "b" ; "c"];;
rev [3.1; 4.2; 5.3];;
(*
  val rev : 'a list -> 'a list = <fun> :: para qualquer tipo de 'a, rev retorna uma lista do tipo 'a.

  Retorno esperado: 
  - : string list = ["c"; "b"; "a"]
  - : float list = [5.3; 4.2; 3.1]
*)

let is_palindrome list =
  list = rev list;;

is_palindrome [ "a" ; "r" ; "a" ; "r" ; "a" ];;
is_palindrome [ "g" ; "a" ; "b" ; "r" ; "i"; "e" ; "l" ; "a" ];;
is_palindrome [ 1 ; 2 ; 3 ; 4 ; 3; 2; 1];;
is_palindrome [ true ; false ; true];;
not(is_palindrome [ "g" ; "a" ; "b" ; "r" ; "i"; "e" ; "l" ; "a" ]);;

(*
  val is_palindrome : 'a list -> bool = <fun> :: para qualquer tipo de 'a, is_palindrome retorna um valor 
  booleano.

  Retorno esperado: 
  - : bool = true
  - : bool = false
  - : bool = true
  - : bool = true
  - : bool = true
*)