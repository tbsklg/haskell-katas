module Kyu7.Cake where

import Data.Char (ord)
import Text.Printf ( printf )

cake :: Int -> String -> String
cake b s
  | fromIntegral totalCandles >= (read (printf "%.2f" (t b)) :: Float) = "Fire!"
  | otherwise = "That was close!"
  where
    totalCandles = sum . map (\x -> if even . fst $ x then ord . snd $ x else positionInAlphabet . snd $ x) . zip [0 ..] $ s

t :: Int -> Float
t b = fromIntegral b * 0.7 

positionInAlphabet :: Char -> Int
positionInAlphabet c = ord c - 96
