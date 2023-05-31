module Kyu6.StringAverage (averageString) where

import Data.List (elemIndex)
import Data.Maybe (fromMaybe)

averageString :: String -> String
averageString "" = "n/a"
averageString xs =
  fromMaybe "n/a" $ do
    ds <- digits xs
    a <- average ds
    return $ numbers !! a

average [] = Nothing
average xs = Just $ sum xs `div` length xs

digits = sequence . map (`elemIndex` numbers) . words

numbers = ["zero", "one", "two", "three", "four", "five", "six", "seven", "eight", "nine"]
