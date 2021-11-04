module Kyu7.VowelIndices where

vowelIndices :: String -> [Integer]
vowelIndices word = map fst $ filter (\x -> snd x `elem` vowels) (zip [1 ..] word)

vowels :: [Char]
vowels = "aeiouyAEIOUY"

-- vowelIndices = map ((+1) . toInteger) . findIndices (`elem` "aeiouyAEIOUY")
