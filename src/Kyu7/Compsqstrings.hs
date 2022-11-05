module Kyu7.Compsqstrings where

import Data.List (intercalate)
import Data.List.Split (splitOn)

compose :: String -> String -> String
compose [] [] = []
compose s1 s2 = intercalate newLine $ compose' 1 (splitOnNewLine' s1) (reverse $ splitOnNewLine' s2)
  where
    compose' _ [] [] = []
    compose' _ _ [] = []
    compose' _ [] _ = []
    compose' t (x : xs) (y : ys) = composeAt t x y : compose' (t + 1) xs ys

splitOnNewLine' :: String -> [String]
splitOnNewLine' = splitOn newLine

newLine :: [Char]
newLine = "\n"

composeAt :: Int -> String -> String -> String
composeAt n s1 s2 = take n s1 ++ take (length s2 - n + 1) s2

-- compose :: String -> String -> String
-- compose s1 s2 = intercalate "\n" $ zipWith (++) (toTriangle s1) (reverse $ toTriangle s2) where
--   toTriangle = zipWith take [1..] . lines
