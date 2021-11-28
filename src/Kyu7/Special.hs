module Kyu7.Special where

specialNumber :: Int -> String
specialNumber i
  | isSpecial = "Special!!"
  | otherwise = "NOT!!"
  where
    isSpecial = foldl (\x y -> x && y `elem` specials) True . show $ i

specials :: [Char]
specials = "012345"
