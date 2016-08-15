module Main where
  -- We want to color a map of the SE United States.
  -- No two states of the same color will touch.
  --
  
  colorStates :: [(String, String, String, String, String)]
  
  colorStates = let colors = ["red", "blue", "green"]
                    in [(alabama, florida, georgia, mississippi, tennessee) | 
                          alabama <- colors, florida <- colors, georgia <- colors, 
                          mississippi <- colors, tennessee <- colors, 
                          alabama /= tennessee, alabama /= georgia, alabama /= florida, 
                          georgia /= florida, georgia /= tennessee, 
                          mississippi /= tennessee, mississippi /= alabama]




                                
