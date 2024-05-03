module Kyu6.BaseConversion where

import Data.List (elemIndex, genericIndex)

newtype Alphabet = Alphabet {getDigits :: [Char]} deriving (Show)

convert :: Alphabet -> Alphabet -> String -> String
convert (Alphabet a) (Alphabet b) x
  | baseA == baseB = map (b !!) $ digits (Alphabet a) x
  | otherwise = map (\x -> genericIndex b x) . convertToBase baseA baseB . digits (Alphabet a) $ x
  where
    baseA = length $ a
    baseB = length $ b

    convertToBase :: Int -> Int -> [Int] -> [Integer]
    convertToBase sourceBase targetBase = convert targetBase . convertToBase10 sourceBase
      where
        convert :: Int -> Integer -> [Integer]
        convert targetBase x
          | x < toInteger targetBase = [x]
          | otherwise = convert targetBase (x `div` toInteger targetBase) ++ [x `mod` toInteger targetBase]

    convertToBase10 :: Int -> [Int] -> Integer
    convertToBase10 sourceBase xs = sum $ zipWith (\x y -> toInteger x * (toInteger sourceBase) ^ y) (reverse xs) [0 ..]

    digits :: Alphabet -> String -> [Int]
    digits _ [] = []
    digits (Alphabet a) (x : xs) = case elemIndex x a of
      Just i -> i : digits (Alphabet a) xs
      Nothing -> error "Invalid digit"
