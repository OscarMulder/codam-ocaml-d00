(* ************************************************************************** *)
(*                                                                            *)
(*                                                        ::::::::            *)
(*   ft_print_alphabet.ml                               :+:    :+:            *)
(*                                                     +:+                    *)
(*   By: omulder <omulder@student.codam.nl>           +#+                     *)
(*                                                   +#+                      *)
(*   Created: 2021/10/05 11:51:25 by omulder       #+#    #+#                 *)
(*   Updated: 2021/10/05 11:56:17 by omulder       ########   odam.nl         *)
(*                                                                            *)
(* ************************************************************************** *)

let ft_print_alphabet () =
	let rec loop ascii_current_char =
    if ascii_current_char <= (int_of_char 'z') then
      let current_char = char_of_int ascii_current_char in
      print_char current_char;
      loop (ascii_current_char + 1)
  in
  loop (int_of_char 'a');
  print_char '\n'

let main () =
  ft_print_alphabet ()

let () = main ()
