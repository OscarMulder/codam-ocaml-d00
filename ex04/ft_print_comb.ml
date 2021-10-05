(* ************************************************************************** *)
(*                                                                            *)
(*                                                        ::::::::            *)
(*   ft_print_comb.ml                                   :+:    :+:            *)
(*                                                     +:+                    *)
(*   By: omulder <omulder@student.codam.nl>           +#+                     *)
(*                                                   +#+                      *)
(*   Created: 2021/10/05 13:06:32 by omulder       #+#    #+#                 *)
(*   Updated: 2021/10/05 15:17:00 by omulder       ########   odam.nl         *)
(*                                                                            *)
(* ************************************************************************** *)

let ft_print_comb () =
  let a = 0 in
  let b = 1 in
  let c = 2 in
  let rec loop a b c =
    print_int a;
    print_int b;
    print_int c;
    if a == 7 then
      print_string "\n"
    else
      begin
        print_string ", ";
        let c = c + 1 in
        let b = (if c == 10 then b + 1 else b) in
        let a = (if b == 9 then a + 1 else a) in
        let b = (if b == 9 then a + 1 else b) in
        let c = (if c == 10 then b + 1 else c) in
        loop a b c
      end
  in
  loop a b c


let main () =
  ft_print_comb ()

let () = main ()
