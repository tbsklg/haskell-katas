module Kyu5.Beer where

beeramid :: Double -> Double -> Int
beeramid b c =
  length
    . takeWhile ((>=) . floor . (/) b $ c)
    . scanl1 (+)
    . map (^ 2)
    $ [1 ..]
