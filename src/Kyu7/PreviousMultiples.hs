module Kyu7.PreviousMultiples (prevMultOfThree) where

prevMultOfThree :: Int -> Maybe Int
prevMultOfThree = multipleOf3 . show
  where
    multipleOf3 [] = Nothing
    multipleOf3 x
      | read' x `mod` 3 == 0 = Just . read' $ x
      | otherwise = multipleOf3 . init $ x

read' :: String -> Int
read' s = read s :: Int
