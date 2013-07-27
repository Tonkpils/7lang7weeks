module Main where
  -- Write a list comprehension to build a multiplication table.
  -- The table is a three-tuple where the first two integers are from 1-12
  -- The third is the product of the first two
  --
 
  multiplicationTable :: Integer -> [(Integer, Integer, Integer)]
  multiplicationTable value = 
    [(x, y, x * y) | x <- [1..value], y <- [1..value]]
