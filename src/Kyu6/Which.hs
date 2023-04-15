module Kyu6.Which where

import Data.List (isInfixOf, nub, sort)

inArray :: [String] -> [String] -> [String]
inArray a1 a2 = sort . nub . filter (\x -> any (\y -> x `isInfixOf` y) a2) $ a1
