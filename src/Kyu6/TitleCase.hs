module Kyu6.TitleCase (titleCase) where

import Data.Char (toLower, toUpper)

titleCase :: String -> String -> String
titleCase minor title =
  unwords
    . (:) (capitalize . head . words $ title)
    . go (words . map toLower $ minor)
    $ (tail . words . map toLower $ title)
  where
    go _ [] = []
    go m (x : xs)
      | x `elem` m = x : go m xs
      | otherwise = capitalize x : go m xs

capitalize :: String -> String
capitalize "" = ""
capitalize (x : xs) = toUpper x : map toLower xs
