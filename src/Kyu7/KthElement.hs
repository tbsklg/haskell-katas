module Kyu7.KthElement where

import Prelude hiding ((!!))

-- | Returns Just the k-th element of the list, or Nothing if k is out of bounds.
elementAt :: Int -> [a] -> Maybe a
elementAt n xs
  | n <= 0 = Nothing
  | otherwise = case drop (n - 1) xs of
    [] -> Nothing
    a -> Just . head $ a
