module Kyu7.Conference where

conferencePicker :: [String] -> [String] -> Maybe String
conferencePicker citiesVisited citiesOffered = case dropWhile (`elem` citiesVisited) citiesOffered of
  [] -> Nothing
  cities -> Just . head $ cities

-- listToMaybe
