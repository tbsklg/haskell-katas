module Kyu7.SubstringCount where

import Data.List (isPrefixOf, tails)

solution :: String -> String -> Int
solution xs "" = length xs
solution xs x = sum [1 | s <- tails xs, x `isPrefixOf` s]
