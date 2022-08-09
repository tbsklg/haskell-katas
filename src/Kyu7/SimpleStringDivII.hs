module Kyu7.SimpleStringDivII where

solve :: String -> Int -> Int
solve l k = length . filter (\x -> x `mod` k == 0) . map read $ p
  where
    p =
      map (\(i, j) -> (l1 !! i) ++ (l1 !! j)) $
        [ (i, j)
          | i <- [0 .. length l1 - 1],
            j <- [0 .. length l1 - 1],
            i /= j
        ]

    l1 = words l
