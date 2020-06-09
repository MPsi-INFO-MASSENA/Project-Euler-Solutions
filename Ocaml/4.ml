let array_rev t =
  let n = Array.length t in
  let s = Array.copy t in
  for i=0 to n-1 do
    t.(i) <- s.(n-1-i)
  done;
  t
;;

let array_of_int n =
  let p = int_of_float (log10 (float_of_int n)) and reste = ref n in
  let t = Array.make (p+1) 0 in
  for i = p downto 0 do
    let q = int_of_float (10. ** (float_of_int i)) in
    t.(i) <- !reste / q;
    reste := !reste mod q
  done;
  array_rev t
;;

let isPalindrome n =
  let p = array_of_int n in
  let q = Array.length p in
  let condition = ref true in
  for i = 0 to q-1 do
    condition := (!condition) && (p.(i) = p.(q-i-1))
  done;
  !condition
;;

    
let largest_palindrome_product n =
  let sortie = ref 0 in
  for i = 0 to n do
    for j = 0 to n do
      if isPalindrome (i*j) && (i*j) > !sortie then sortie := (i*j)
    done;
  done;
  sortie
;;