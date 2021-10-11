(* ************************************************************************** *)
(*                                                                            *)
(*                                                        ::::::::            *)
(*   ft_rot_n.ml                                        :+:    :+:            *)
(*                                                     +:+                    *)
(*   By: omulder <omulder@student.codam.nl>           +#+                     *)
(*                                                   +#+                      *)
(*   Created: 2021/10/11 09:34:11 by omulder       #+#    #+#                 *)
(*   Updated: 2021/10/11 12:02:12 by omulder       ########   odam.nl         *)
(*                                                                            *)
(* ************************************************************************** *)

let is_upper c =
  Char.code c >= Char.code 'A' && Char.code c <= Char.code 'Z'
  
let is_lower c =
  Char.code c >= Char.code 'a' && Char.code c <= Char.code 'z'

let get_new_char c n =
  let loweralpha = "abcdefghijklmnopqrstuvwxyz" in
  let upperalpha = "ABCDEFGHIJKLMNOPQRSTUVWXYZ" in
  if is_upper c then
    String.get upperalpha (((Char.code c) - (Char.code ('A')) + (n mod 26)) mod 26)
  else if is_lower c then
    String.get loweralpha (((Char.code c) - Char.code ('a') + (n mod 26)) mod 26)
  else
    c

let ft_rot_n n str =
  let rec loop n str i =
    let c = String.get str i in
    if i == (String.length str) - 1 then
      String.make 1 (get_new_char c n)
    else
      String.make 1 (get_new_char c n) ^ (loop n str (i + 1))
  in
  loop n str 0

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
