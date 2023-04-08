module Kyu6.MissingLetter where

import Data.Char (toLower)

findMissingLetter :: [Char] -> Char
findMissingLetter xs = fst . head . dropWhile (uncurry (==)) . zip [head xs .. ] $ xs

