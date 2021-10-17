module Kyu7.ComfortableWords (comfortableWord) where

comfortableWord :: String -> Bool
comfortableWord [] = True
comfortableWord (x:xs)
    | x `elem` left = foldr ((&&) . (`elem` left)) True (odds (x:xs)) && foldr ((&&) . (`elem` right)) True (evens (x : xs))
    | x `elem` right = foldr ((&&) . (`elem` right)) True (odds (x : xs)) && foldr ((&&) . (`elem` left)) True (evens (x : xs))
    | otherwise = False

odds :: [a] -> [a]
odds = fst . split

evens :: [a] -> [a]
evens = snd . split

left :: [Char]
left = "qwertasdfgzxcvb"

right :: [Char]
right = "yuiophjklnm"

split :: [a] -> ([a],[a])
split = foldr (\x ~(y2,y1) -> (x:y1, y2)) ([],[])

-- comfortableWord = and . (zipWith (/=)  <*> tail) . map (`elem` "yuiophjklnm")
