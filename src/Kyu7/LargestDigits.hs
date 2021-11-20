module Kyu7.LargestDigits where

digit5 :: String -> Int
digit5 s = maximum . map (\x -> read x :: Int) $ numbers s
  where
    numbers [] = []
    numbers xs
      | length xs < 5 = []
      | otherwise = take 5 xs : numbers (drop 1 xs)

-- digit5 :: String -> Int
-- digit5 = maximum . map (read . take 5) . init . tails
