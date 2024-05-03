module Kyu6.Rainfall where

import Text.Parsec

mean :: String -> String -> Double
mean twn strng = case lookup twn (parseTowns strng) of
  Nothing -> -1
  Just nums -> sum nums / fromIntegral (length nums)

variance :: String -> String -> Double
variance twn strng = case lookup twn (parseTowns strng) of
  Nothing -> -1
  Just nums -> (sum $ map (\x -> (x - mean') ^ 2) nums) / fromIntegral (length nums)
    where
      mean' = mean twn strng

parseTowns :: String -> [(String, [Double])]
parseTowns raw = map parseTown . lines $ raw
  where
    parseTown :: String -> (String, [Double])
    parseTown rawTown = case parse townParser "" rawTown of
      Left _ -> error "Failed to parse town"
      Right town -> town

    townParser :: Parsec String () (String, [Double])
    townParser = do
      town <- many1 letter
      char ':'
      nums <- sepBy1 numParser (char ',')
      return (town, nums)

    numParser :: Parsec String () Double
    numParser = do
      many1 letter
      char ' '
      whole <- many1 digit
      char '.'
      decimal <- many1 digit
      pure $ read $ whole <> "." <> decimal
