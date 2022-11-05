module Kyu7.BinaryRepresentation (showBits) where

import Data.Int (Int32)

showBits :: Int32 -> [Int32]
showBits x
  | x == (-2 ^ 31) = invert . bin32 $ (2 ^ 31 - 1)
  | x < 0 = addOne . invert . bin32 . abs $ x
  | otherwise = bin32 x

addOne :: [Int32] -> [Int32]
addOne xs = reverse . go . reverse $ xs
  where
    go [] = []
    go (0 : xs) = 1 : xs
    go (1 : xs) = 0 : go xs
    go _ = []

invert :: [Int32] -> [Int32]
invert = map (1 -)

bin32 :: Integral a => a -> [a]
bin32 x = replicate (32 - bits) 0 ++ bin x
  where
    bits = length . bin $ x

bin :: Integral a => a -> [a]
bin 0 = []
bin x = bin (x `div` 2) ++ [x `mod` 2]

-- showBits = reverse . take 32 . map (`mod` 2) . iterate (`div` 2)
