let reconstruct n f =
  let rec r i =
    if i <= 0 then 0
    else (r (i / 10)) * 10 + (f (i mod 10))
  in
  if n <= 0
  then failwith "integer is less-equal than 0"
else r n




let somme element =
  let rec f n i p =
    if n = 0 then (i, p)
    else if n = 1 then (i+1 , p)
    else 
      if (n mod 2) = 0 
      then f (n - 1) i (p + n)
      else f (n - 1) (i + n) p
in
  f element 0 0


  let rec ajouterElement e l = match l with
  | [] -> [] 
  | hd :: tl -> (e::hd) :: ajouterElement e tl
                  
                  
let rec listeDebuts l = match l with 
  | le ::[] -> [] :: (ajouterElement le [[]])
  | hd :: tl -> [] :: ajouterElement hd (listeDebuts tl)


let () = print_int (snd (ack 2 2 0)) (*(reconstruct 88886644 (fun x -> x/2))*)