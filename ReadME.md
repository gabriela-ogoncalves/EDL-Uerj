# OCAML - POLIMORFISMO PARAMÉTRICO

## 📋 Descrição da Funcionalidade

O polimorfismo paramétrico ocorre quando um tipo de dado/função pode ser escrito genericamente, de modo que possa lidar com diferentes valores de forma idêntica, independente do seu tipo.

## 🖼️ Exemplos em OCaml

Uma função é polifórmica se ela puder receber qualquer tipo de dado da linguagem como parâmetro e se o seu retorno ou estrutura não sofrer modificação devido a isso.  

Na imagem abaixo temos alguns exemplos e a forma como OCaml retorna seus valores. 

![](https://github.com/gabriela-ogoncalves/EDL-Uerj/blob/main/exemplo.png)

**List.length** e **List.hd** são funções polimórmicas da biblioteca padrão. A primeira retorna o tipo e tamanho da lista passada, enquanto a segunda retorna o tipo e primeiro elemento de cada lista. Perceba que, independente do tipo da entrada, as funções funcionam da mesma forma para o dado passado. 

O terceiro exemplo diz respeito a função **last** que espera uma lista como entrada e retorna o seu último elemento. Mas o que significa aquela linha iniciada por **val last**? 

O próprio programa retona o valor das expressões utilizadas no código (isso será importante para entender todos os exemplos deste repositório). 

A regra de ouro de OCaml é entender que
- cada expressão OCaml tem um valor;
- cada expressão OCaml tem um e um só tipo.

É importante saber também que 'a é uma variável de tipo. Isso significa que ela é uma forma genérica de representar qualquer tipo de dado, ou seja, pode ser substituída por qualquer tipo da linguagem (int, float, string, char...). Em OCaml, esse dado é geralmente denominado 'a, 'b, 'c etc. 

Sabendo disso, vamos interpretar o que a linha significa:

```ocaml
val last : 'a list -> 'a option = <fun>
```

Tradução: last é uma função. Para qualquer tipo de 'a, last recebe uma lista de 'a como parâmetro e retorna uma um elemento do tipo 'a option. As options representam valores indefinidos (None) ou um valor qualquer (Some) do tipo 'a.

O fato de os tipos dos elementos não precisarem ser especificados, mas sim representados pela variável de tipo 'a faz com que a função last possa ser aplicada tanto a uma lista de inteiros quanto a uma lista de strings, conforme o exemplo apresentado. E isso se deve ao polimorfismo paramétrico, funcionalidade de alta expressividade de OCaml.