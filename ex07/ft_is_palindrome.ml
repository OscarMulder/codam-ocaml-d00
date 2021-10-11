(* ************************************************************************** *)
(*                                                                            *)
(*                                                        ::::::::            *)
(*   ft_is_palindrome.ml                                :+:    :+:            *)
(*                                                     +:+                    *)
(*   By: omulder <omulder@student.codam.nl>           +#+                     *)
(*                                                   +#+                      *)
(*   Created: 2021/10/11 09:24:37 by omulder       #+#    #+#                 *)
(*   Updated: 2021/10/11 09:32:51 by omulder       ########   odam.nl         *)
(*                                                                            *)
(* ************************************************************************** *)

let ft_is_palindrome str =
  let rec loop str n =
    if n == (String.length str) then
      true
    else if (String.get str n) != (String.get str ((String.length str) - (n + 1))) then
      false
    else
      loop str (n + 1)
  in
  loop str 0

let print_bool b =
  if b then
    print_endline "true"
  else
    print_endline "false"

let main () =
  print_string "ft_is_palindrome \"\": ";
  print_bool (ft_is_palindrome "");

  print_string "ft_is_palindrome \"a\": ";
  print_bool (ft_is_palindrome "a");

  print_string "ft_is_palindrome \"aa\": ";
  print_bool (ft_is_palindrome "aa");

  print_string "ft_is_palindrome \"ab\": ";
  print_bool (ft_is_palindrome "ab");

  print_string "ft_is_palindrome \"aba\": ";
  print_bool (ft_is_palindrome "aba");

  print_string "ft_is_palindrome \"abba\": ";
  print_bool (ft_is_palindrome "abba");

  print_string "ft_is_palindrome \"abcba\": ";
  print_bool (ft_is_palindrome "abcba");

  print_string "ft_is_palindrome \"abcbab\": ";
  print_bool (ft_is_palindrome "abcbab");

  print_string "ft_is_palindrome \"abcdba\": ";
  print_bool (ft_is_palindrome "abcdba")

let () = main ()
