module Kyu7.Beats where

beasts :: Integer -> Integer -> Maybe (Integer, Integer)
beasts heads tails
  | heads < 0 || tails < 0 = Nothing
  | not validHeads || not validTails = Nothing
  | otherwise = Just (orthus, hydras)
  where
    orthus = (heads - 5 * tails) `div` (-3)
    hydras = tails - orthus
    validTails = orthus + hydras == tails
    validHeads = orthus * 2 + hydras * 5 == heads

-- beasts :: Integer -> Integer -> Maybe (Integer, Integer)
-- beasts heads tails = if null b then Nothing else head b
--   where
--     b = [Just (x,y) | x <- [0..tails], y <- [0..tails], x*2+y*5 == heads, x+y == tails]
