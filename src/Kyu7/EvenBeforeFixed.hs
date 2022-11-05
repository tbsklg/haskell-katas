module Kyu7.EvenBeforeFixed (evenNumbersBeforeFixed) where

evenNumbersBeforeFixed :: [Int] -> Int -> Maybe Int
evenNumbersBeforeFixed xs i
  | i `elem` xs = Just . length . filter even . takeWhile (/= i) $ xs
  | otherwise = Nothing
