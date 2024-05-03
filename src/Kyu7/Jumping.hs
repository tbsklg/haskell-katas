module Kyu7.Jumping where

import Data.Char (digitToInt)

jumpingNumber :: Int -> String
jumpingNumber d
  | isJumping . digits $ d = "Jumping!!"
  | otherwise = "Not!!"
  where
    isJumping [] = True
    isJumping [x] = True
    isJumping (x : y : ys) = (x + 1 == y || x - 1 == y) && isJumping (y : ys)

digits :: (Show a) => a -> [Int]
digits = map digitToInt . show
