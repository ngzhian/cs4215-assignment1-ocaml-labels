(* conventional function declaration *)
let f x y = x + y;;
f 1 2;;

(* simple function with labels *)
let f ~x ~y = x + y ;;

(* 2 ways to apply function *)
let x = 1 and y = 2 in f ~x ~y ;;
f ~x:1 ~y:2;;

(* let f ~x:x1 ~y:y1 = x + y ;; (* this is an error *) *)
(* different names for labels and arguments *)
let f ~x:x1 ~y:y1 = x1 + y1 ;;
f ~x:1 ~y:2;;

(* ordering does not matter with labels *)
f ~y:2 ~x:1;;

(* function can be partially applied with labels *)
let g = f ~y:2;;
g ~x:1 ;;

(* if application is total, labels can be omitted *)
f 1 2

(* repeated labels *)
let triple ~x:x1 ~x:x2 ~y = (x1, x2, y) ;;

(* ordering matters when labels are repeated *)
triple ~x:3 ~x:4 ~y:5 ;;
triple 3 4 5 ;;

(* optional arguments *)
let bump ?(step = 1) x = x + step ;;
bump 2 ;;
bump ~step:3 2 ;;

(* optional arguments implemented using option types *)
let bump ?step x =
    match step with
    | None -> x * 2
    | Some y -> x + y
  ;;

(* pass through optional arguments *)
  let bumpy ?step = bump ?step ;;
bumpy 3 ;;
