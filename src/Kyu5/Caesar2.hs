module Kyu5.Caesar2 where

import Data.Char (chr, isAlpha, isLower, isUpper, ord, toLower)
import Data.List.Split (chunksOf)

decode :: [String] -> String
decode s = drop 2 . concatMap (map (shiftL rotate')) . chunk' . concat $ s
  where
    rotate' = rotate (head prefix) (prefix !! 1)
    prefix = take 2 . head $ s

encodeStr :: String -> Int -> [String]
encodeStr s i = chunk' . (++) (prefix i (head s)) . map (shiftR i) $ s

shiftR :: Int -> Char -> Char
shiftR n c
  | isUpper c && isAlpha c = chr . convert offsetU . (+) n . ord $ c
  | isLower c && isAlpha c = chr . convert offsetL . (+) n . ord $ c
  | otherwise = c

shiftL :: Int -> Char -> Char
shiftL n c
  | isUpper c && isAlpha c = chr . convert offsetU . flip (-) n . ord $ c
  | isLower c && isAlpha c = chr . convert offsetL . flip (-) n . ord $ c
  | otherwise = c

offsetL :: Int
offsetL = 97

offsetU :: Int
offsetU = 65

convert :: Int -> Int -> Int
convert offset code = (+) offset . flip mod 26 . (-) code $ offset

prefix :: Int -> Char -> String
prefix n c = toLower c : [shiftR n . toLower $ c]

rotate :: Char -> Char -> Int
rotate a b = length . takeWhile (/= b) . dropWhile (/= a) . cycle $ ['a' .. 'z']

chunk' :: String -> [String]
chunk' str = chunksOf (ceiling . flip (/) 5 . fromIntegral . length $ str) str
