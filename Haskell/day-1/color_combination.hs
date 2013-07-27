module Main where
  -- Write a function that builds a two-tuple with all combinations of colors
  -- black, white, blue, yellow, and red.

  colorCombinations :: [String] -> [(String, String)]
  
  colorCombinations colors = [(x, y) | x <- colors, y <- colors, (x < y)]
