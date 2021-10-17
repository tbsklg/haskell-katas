module Kyu7.ComfortableWords (comfortableWord) where

comfortableWord :: String -> Bool
comfortableWord [] = True
comfortableWord (x : xs)
  | x `elem` left = isComfortableForLeft (odds (x : xs)) && isComfortableForRight (evens (x : xs))
  | x `elem` right = isComfortableForRight (odds (x : xs)) && isComfortableForLeft (evens (x : xs))
  | otherwise = False

isComfortableForLeft :: Foldable t => t Char -> Bool
isComfortableForLeft = foldr ((&&) . (`elem` left)) True

isComfortableForRight :: Foldable t => t Char -> Bool
isComfortableForRight = foldr ((&&) . (`elem` right)) True

odds :: [a] -> [a]
odds = fst . split

evens :: [a] -> [a]
evens = snd . split

left :: [Char]
left = "qwertasdfgzxcvb"

right :: [Char]
right = "yuiophjklnm"

split :: [a] -> ([a], [a])
split = foldr (\x ~(y2, y1) -> (x : y1, y2)) ([], [])

-- comfortableWord = and . (zipWith (/=)  <*> tail) . map (`elem` "yuiophjklnm")
