module Kyu7.ConsecutiveLetters where

import Data.List (sort, isInfixOf)

solve :: String -> Bool
solve xs = sort xs `isInfixOf` ['a' .. 'z']
