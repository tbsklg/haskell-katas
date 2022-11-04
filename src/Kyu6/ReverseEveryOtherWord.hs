module Kyu6.ReverseEveryOtherWord (reverseEveryOther) where

reverseEveryOther :: String -> String
reverseEveryOther = unwords . zipWith (curry reverseOther) [0 ..] . words
  where
    reverseOther (i, w)
      | odd i = reverse w
      | otherwise = w
