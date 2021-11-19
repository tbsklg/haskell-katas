module Kyu7.SearchForLetters (search) where

import Data.Char (toLower)

search :: String -> String
search s = map (\x -> if x `elem` asLowerCase then '1' else '0') ['a' .. 'z']
    where
        asLowerCase = map toLower s
