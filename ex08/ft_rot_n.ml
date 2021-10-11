(* ************************************************************************** *)
(*                                                                            *)
(*                                                        ::::::::            *)
(*   ft_rot_n.ml                                        :+:    :+:            *)
(*                                                     +:+                    *)
(*   By: omulder <omulder@student.codam.nl>           +#+                     *)
(*                                                   +#+                      *)
(*   Created: 2021/10/11 09:34:11 by omulder       #+#    #+#                 *)
(*   Updated: 2021/10/11 13:47:40 by omulder       ########   odam.nl         *)
(*                                                                            *)
(* ************************************************************************** *)

let is_upper c =
  int_of_char c >= int_of_char 'A' && int_of_char c <= int_of_char 'Z'
  
let is_lower c =
  int_of_char c >= int_of_char 'a' && int_of_char c <= int_of_char 'z'

let get_new_char n c =
  if is_upper c then
    char_of_int (int_of_char 'A' + ((int_of_char c - int_of_char ('A') + (n mod 26)) mod 26))
  else if is_lower c then
    char_of_int (int_of_char 'a' + ((int_of_char c - int_of_char ('a') + (n mod 26)) mod 26))
  else
    c

let ft_rot_n n str =
  String.map (get_new_char n) str

let main () =
  print_string "ft_rot_n 1 \"abcdefghijklmnopqrstuvwxyz\": ";
  print_endline (ft_rot_n 1 "abcdefghijklmnopqrstuvwxyz");

  print_string "ft_rot_n 1 \"ABCDEFGHIJKLMNOPQRSTUVWXYZ\": ";
  print_endline (ft_rot_n 1 "ABCDEFGHIJKLMNOPQRSTUVWXYZ");

  print_string "ft_rot_n 13 \"abcdefghijklmnopqrstuvwxyz\": ";
  print_endline (ft_rot_n 13 "abcdefghijklmnopqrstuvwxyz");

  print_string "ft_rot_n 42 \"0123456789\": ";
  print_endline (ft_rot_n 42 "0123456789");

  print_string "ft_rot_n 2 \"OI2EAS67B9\": ";
  print_endline (ft_rot_n 2 "OI2EAS67B9");

  print_string "ft_rot_n 0 \"Damned !\": ";
  print_endline (ft_rot_n 0 "Damned !");

  print_string "ft_rot_n 1 \"NBzlk qnbjr !\": ";
  print_endline (ft_rot_n 1 "NBzlk qnbjr !")

let () = main ()
