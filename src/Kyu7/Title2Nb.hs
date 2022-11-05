module Kyu7.Title2Nb where

titleToNb :: String -> Integer
titleToNb xs =
  foldl (\y (i, x) -> y + x * 26 ^ i) (pos . last $ xs)
    . zip [1 ..]
    . map pos
    . reverse
    . init
    $ xs

pos :: Char -> Integer
pos x = (fromIntegral . fromEnum $ x) - 64
