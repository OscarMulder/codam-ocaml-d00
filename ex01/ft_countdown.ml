(* ************************************************************************** *)
(*                                                                            *)
(*                                                        ::::::::            *)
(*   ft_countdown.ml                                    :+:    :+:            *)
(*                                                     +:+                    *)
(*   By: omulder <omulder@student.codam.nl>           +#+                     *)
(*                                                   +#+                      *)
(*   Created: 2021/10/05 09:37:55 by omulder       #+#    #+#                 *)
(*   Updated: 2021/10/05 09:56:24 by omulder       ########   odam.nl         *)
(*                                                                            *)
(* ************************************************************************** *)

let ft_countdown n =
  let rec loop current_number =
    if current_number > 0 then
      begin
        print_int current_number;
        print_char '\n';
        loop (current_number - 1)
      end
    else
      begin
        print_int 0;
        print_char '\n'
      end
  in
  loop n


let main () =
  print_endline "-------------------------";
  print_endline "ft_countdown 5:";
  ft_countdown 5;
  print_endline "-------------------------";

  print_endline "ft_countdown 0:";
  ft_countdown 0;
  print_endline "-------------------------";

  print_endline "ft_countdown (-1):";
  ft_countdown (-1);
  print_endline "-------------------------"

let () = main ()
