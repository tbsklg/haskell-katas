module Kyu7.Middle where
  
import Data.Function ( on )
import Data.List ( sortBy )

gimme :: Ord a => (a, a, a) -> Int
gimme (a, b, c) = head . tail . map fst . sortBy (compare `on` snd) . zip [0 ..] $ [a, b, c]
