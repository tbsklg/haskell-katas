module Kyu7.Newaverage where

newAvg :: [Double] -> Double -> Maybe Int
newAvg xs navg
  | missing > 0 = Just $ ceiling missing
  | otherwise = Nothing
  where
    missing = navg * fromIntegral (length xs + 1) - sum xs
