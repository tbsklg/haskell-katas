module Kyu7.Bumbs where

bump :: String -> String
bump str
  | numberOfBumbs str > 15 = "Car Dead"
  | otherwise = "Woohoo!"
  where
    numberOfBumbs str = length $ filter (>= '_') str

-- bump :: String -> String
-- bump = (bool "Car Dead" "Woohoo!") . (<=15) . length . filter (=='n')
