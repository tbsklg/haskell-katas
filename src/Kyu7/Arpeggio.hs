module Kyu7.Arpeggio where

arpeggio :: Char -> Maybe String
arpeggio x
  | x `notElem` values = Nothing
  | otherwise = Just $ head scale : (scale !! 2) : (scale !! 4) : [scale !! 7]
  where
    scale = take 8 . dropWhile (/= x) . cycle $ values
    values = "ABCDEFG"
