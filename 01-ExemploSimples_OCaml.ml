(* 
   Programa simples escrito em OCaml, exemplificando as funções polimórficas da biblioteca padrão.
   List.length --> recebe uma lista de qualquer tipo e retorna o seu tamanho.
   List.hd --> recebe uma lista de qualquer tipo e retorna o primeiro elemento de cada uma. 
*)

List.length["ana";"joão";"josé"];; 
List.length[false; true];;
List.length[2; 4; 6; 8; 10];;
(* 
   Nessa primeira parte, temos os respectivos retornos:  
  - : int = 3
  - : int = 2
  - : int = 5
*)

List.hd["ana";"joão";"josé"];;
List.hd[false; true];;
List.hd[2; 4; 6; 8; 10];;
(* 
   Nessa segunda parte, temos os respectivos retornos:  
  - : string = "ana"
  - : bool = false
  - : int = 2
*)
