(* ************************************************************************** *)
(*                                                                            *)
(*                                                        ::::::::            *)
(*   ft_test_sign.ml                                    :+:    :+:            *)
(*                                                     +:+                    *)
(*   By: omulder <omulder@student.codam.nl>           +#+                     *)
(*                                                   +#+                      *)
(*   Created: 2021/10/04 13:47:29 by omulder       #+#    #+#                 *)
(*   Updated: 2021/10/04 14:16:18 by omulder       ########   odam.nl         *)
(*                                                                            *)
(* ************************************************************************** *)

let ft_test_sign n =
	if n >= 0
	then print_endline "positive"
	else print_endline "negative"

let main () =
	print_string "ft_test_sign    42: ";
  ft_test_sign 42;
  print_string "ft_test_sign     0: ";
  ft_test_sign 0;
  print_string "ft_test_sign (-42): ";
  ft_test_sign (-42)

let () = main ()
 