module Kyu6.FindOutlier (findOutlier) where

findOutlier :: [Int] -> Int
findOutlier xs
  | length evens == 1 = head evens
  | otherwise = head odds
  where
    evens = filter even xs
    odds = filter odd xs

-- findOutlier :: [Int] -> Int
-- findOutlier xs =
--    case partition even xs of
--        ([x], _) -> x
--        (_, [x]) -> x
--        otherwise -> error "invalid input"
