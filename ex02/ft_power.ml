(* ************************************************************************** *)
(*                                                                            *)
(*                                                        ::::::::            *)
(*   ft_power.ml                                        :+:    :+:            *)
(*                                                     +:+                    *)
(*   By: omulder <omulder@student.codam.nl>           +#+                     *)
(*                                                   +#+                      *)
(*   Created: 2021/10/05 11:37:38 by omulder       #+#    #+#                 *)
(*   Updated: 2021/10/05 11:50:16 by omulder       ########   odam.nl         *)
(*                                                                            *)
(* ************************************************************************** *)

let ft_power a b =
  let rec loop a b =
    if b > 0 then
      a * (loop a (b - 1))
    else
      1
  in
  loop a b

let main () =
  print_endline "-------------------------";
  print_endline "ft_power 2 4:";
  print_int (ft_power 2 4);
  print_char '\n';
  print_endline "-------------------------";
  print_endline "ft_power 3 0:";
  print_int (ft_power 3 0);
  print_char '\n';
  print_endline "-------------------------";
  print_endline "ft_power 0 5:";
  print_int (ft_power 0 5);
  print_char '\n';
  print_endline "-------------------------";
  print_endline "ft_power 8 8:";
  print_int (ft_power 8 8);
  print_char '\n';
  print_endline "-------------------------"

let () = main ()