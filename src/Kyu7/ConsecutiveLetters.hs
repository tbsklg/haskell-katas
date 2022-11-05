module Kyu7.ConsecutiveLetters where

import Data.List (isInfixOf, sort)

solve :: String -> Bool
solve xs = sort xs `isInfixOf` ['a' .. 'z']
