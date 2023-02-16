module Kyu6.YourOrderPlease (yourOrderPlease) where

import Data.Char (isDigit)
import Data.List (sortBy)

yourOrderPlease :: String -> String
yourOrderPlease = unwords . sortBy exisitingNumber . words
    where
        exisitingNumber a b = compare (read [c] :: Int) (read [d] :: Int)
            where
                c = head $ filter isDigit a
                d = head $ filter isDigit b
