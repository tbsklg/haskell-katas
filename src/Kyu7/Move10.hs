module Kyu7.Move10 where

import Data.Char (chr, ord)

move10 :: String -> String
move10 = map move

move :: Char -> Char
move c = last . take 11 . dropWhile (/= c) $ cycle ['a' .. 'z']
