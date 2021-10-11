(* ************************************************************************** *)
(*                                                                            *)
(*                                                        ::::::::            *)
(*   ft_string_all.ml                                   :+:    :+:            *)
(*                                                     +:+                    *)
(*   By: omulder <omulder@student.codam.nl>           +#+                     *)
(*                                                   +#+                      *)
(*   Created: 2021/10/05 15:44:42 by omulder       #+#    #+#                 *)
(*   Updated: 2021/10/11 09:17:07 by omulder       ########   odam.nl         *)
(*                                                                            *)
(* ************************************************************************** *)

let ft_string_all func str =
  let rec loop func str n =
    if n == (String.length str) then
      true
    else if func (String.get str n) == false then
      false
    else
      loop func str (n + 1)
  in
  loop func str 0

let is_digit digit =
  match digit with
    '0' .. '9' -> true
  | _ -> false

let print_bool b =
  if b then
    print_endline "true"
  else
    print_endline "false"

let main () =
  print_string "ft_string_all is_digit \"01234\": ";
  print_bool (ft_string_all is_digit "01234");

  print_string "ft_string_all is_digit \"01234A3\": ";
  print_bool (ft_string_all is_digit "01234A3");

  print_string "ft_string_all is_digit \"01234B\": ";
  print_bool (ft_string_all is_digit "01234B");

  print_string "ft_string_all is_digit \"abc123\": ";
  print_bool (ft_string_all is_digit "abc123")

let () = main ()
