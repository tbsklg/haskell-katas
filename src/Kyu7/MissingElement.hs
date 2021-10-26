module Kyu7.MissingElement where

getMissingElement :: [Int] -> Int
getMissingElement xs = 45 - sum xs

-- getMissingElement = head . ([0..9] \\)
