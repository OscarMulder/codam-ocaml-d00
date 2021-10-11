(* ************************************************************************** *)
(*                                                                            *)
(*                                                        ::::::::            *)
(*   ft_print_comb2.ml                                  :+:    :+:            *)
(*                                                     +:+                    *)
(*   By: omulder <omulder@student.codam.nl>           +#+                     *)
(*                                                   +#+                      *)
(*   Created: 2021/10/11 12:06:14 by omulder       #+#    #+#                 *)
(*   Updated: 2021/10/11 13:40:59 by omulder       ########   odam.nl         *)
(*                                                                            *)
(* ************************************************************************** *)

let ft_print_comb2 () =
  let a = 0 in
  let b = 1 in
  let rec loop a b =
    if a < 10 then
      print_char '0';
    print_int a;
    print_char ' ';
    if b < 10 then
      print_char '0';
    print_int b;
    if a == 98 && b == 99 then
      print_string "\n"
    else
      begin
        print_string ", ";
        let b = b + 1 in
        let a = (if b == 100 then a + 1 else a) in
        let b = (if b == 100 then a + 1 else b) in
        loop a b
      end
  in
  loop a b


let main () =
  ft_print_comb2 ()

let () = main ()
