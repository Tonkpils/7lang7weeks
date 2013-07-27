module Main where
  -- Reverse a list
  reverseList :: [a] -> [a]
  reverseList [] = []
  reverseList (head:tail) = reverseList(tail) ++ [head]
