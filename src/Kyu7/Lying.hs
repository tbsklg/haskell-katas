module Kyu7.Lying where

isJohnLying :: (Int, Int) -> Int -> Bool
isJohnLying (x, y) steps = remainingSteps == 0 || (even remainingSteps && remainingSteps > 0)
  where
    remainingSteps = steps - abs x - abs y
