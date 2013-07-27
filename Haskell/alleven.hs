module Main where
  -- How many ways can you find to write allEven?
  allEven :: [Integer] -> [Integer]
  allEven numbers = filter even numbers

  allEven2 :: [Integer] -> [Integer]
  allEven2 numbers = [n | n <- numbers, (even n)]

  allEven3 :: [Integer] -> [Integer]
  allEven3 [] = []
  allEven3 (head:tail) = 
    if (even head) then head:allEven3(tail) else allEven3(tail)

  allEven4 :: [Integer] -> [Integer]
  allEven4 numbers = 
    foldr findEvens' [] numbers 
      where findEvens' number evens = if (even number) then (number:evens) else evens
