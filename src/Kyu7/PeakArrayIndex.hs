module Kyu7.PeakArrayIndex where

peak :: [Int] -> Maybe Int
peak l = peak' l 1
  where
    peak' l c
      | i == t = Just c
      | length l == c = Nothing
      | otherwise = peak' l (c + 1)
      where
        i = sum . take c $ l
        t = sum . drop (c + 1) $ l

-- peak = elemIndex True . (zipWith (==) <$> scanl1 (+) <*> scanr1 (+))
