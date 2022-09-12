module Kyu7.GeometricMean where

geometricMean :: [Integer] -> Maybe Double
geometricMean xs
  | isValid = Just . nroot (length positives) $ (fromIntegral . product $ positives)
  | otherwise = Nothing
  where
    isValid
      | length xs >= 2 && length xs <= 10 = length negatives <= 1
      | otherwise = fromIntegral (length negatives) / fromIntegral (length xs) <= 0.1

    positives = filter (>= 0) xs
    negatives = filter (< 0) xs

nroot :: (Floating a1, Integral a2) => a2 -> a1 -> a1
nroot n x = x ** (1.0 / fromIntegral n)
