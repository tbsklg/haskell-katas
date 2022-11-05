module Kyu7.MovieTitle where

import Data.Char (toLower, toUpper)

correctMovieTitle :: String -> String
correctMovieTitle = unwords . map capitalize . words
  where
    capitalize [] = []
    capitalize (x : xs) = toUpper x : map toLower xs
