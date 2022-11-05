module Kyu7.Switcheroo2 where

vowel2Index :: String -> String
vowel2Index = concatMap (\x -> if snd x `elem` vowels then show (fst x) else [snd x]) . zip [1 ..]

vowels :: [Char]
vowels = "AEIOUaeiou"
