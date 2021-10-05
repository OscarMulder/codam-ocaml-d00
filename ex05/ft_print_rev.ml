(* ************************************************************************** *)
(*                                                                            *)
(*                                                        ::::::::            *)
(*   ft_print_rev.ml                                    :+:    :+:            *)
(*                                                     +:+                    *)
(*   By: omulder <omulder@student.codam.nl>           +#+                     *)
(*                                                   +#+                      *)
(*   Created: 2021/10/05 15:20:36 by omulder       #+#    #+#                 *)
(*   Updated: 2021/10/05 15:32:57 by omulder       ########   odam.nl         *)
(*                                                                            *)
(* ************************************************************************** *)

let ft_print_rev s =
  let length = String.length s in
  let rec loop s n =
    print_char (String.get s n);
    if n == 0 then
      print_char '\n'
    else
      loop s (n - 1)
  in
  if length == 0 then
    print_char '\n'
  else
    loop s (length - 1)

let main () =
  print_endline "ft_print_rev \"Oscar\":";
  ft_print_rev "Oscar";
  print_endline "-------------------------";
  print_endline "ft_print_rev \"This 1 is Also a text!\":";
  ft_print_rev "This 1 is Also a text!";
  print_endline "-------------------------";
  print_endline "ft_print_rev \"\":";
  ft_print_rev ""

let () = main ()
