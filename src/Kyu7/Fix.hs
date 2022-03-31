module Kyu7.Fix where

import Data.Char (toUpper)
import Data.List (intercalate)
import Data.List.Split (splitOn)

fix' :: String -> String
fix' = intercalate ". " . map (\x -> (:) (toUpper . head $ x) . tail $ x) . splitOn ". "
