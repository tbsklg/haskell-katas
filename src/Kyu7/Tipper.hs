module Kyu7.Tipper where

calcTip :: Int -> Int -> Int
calcTip price rating
  | rating == (-1) = maximum [floor (fromIntegral baseTip / 2) - 1, 0]
  | rating == 0 = maximum [baseTip - 1, 0]
  | otherwise = baseTip + rating
  where
    baseTip
      | round' price < 10 = 0
      | otherwise = read . concatMap show . init . digits . round' $ price

round' :: (Integral p) => Int -> p
round' x
  | (==) 5 . last . digits $ x = (*) 10 . ceiling . (/ 10) . fromIntegral $ x
  | otherwise = (*) 10 . round . (/ 10) . fromIntegral $ x

digits :: Int -> [Int]
digits 0 = []
digits x = digits (x `div` 10) ++ [x `mod` 10]
