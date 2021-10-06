module Kyu7.Grey where

import GHC.Show (intToDigit)

shadesOfGrey :: Int -> [String]
shadesOfGrey i
  | i < 0 = []
  | i > 254 = getShades 254
  | otherwise = getShades i
  where
    getShades i = take i $ filter (\x -> x /= black && x /= white) (concat $ compose octet octet octet)
      where
        compose [] [] _ = []
        compose [] _ [] = []
        compose _ [] _ = []
        compose _ _ [] = []
        compose [] _ _ = []
        compose (r : rs) (g : gs) (b : bs) = ["#" ++ r ++ g ++ b] : compose rs gs bs

white :: [Char]
white = "#000000"

black :: [Char]
black = "#ffffff"

octet :: [String]
octet = sequence [map digitToHex [0 .. 15], map digitToHex [0 .. 15]]

digitToHex :: Int -> Char
digitToHex i
  | i < 10 = intToDigit i
  | i == 10 = 'a'
  | i == 11 = 'b'
  | i == 12 = 'c'
  | i == 13 = 'd'
  | i == 14 = 'e'
  | otherwise = 'f'

-- shadesOfGrey n = [ printf "#%02x%02x%02x" i i i | i <- [1 .. min 254 n] ]