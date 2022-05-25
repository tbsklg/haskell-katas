module Kyu7.SequenceLength (lengthOfSequence) where

lengthOfSequence :: (Eq a) => [a] -> a -> Maybe Int
lengthOfSequence xs x
  | length findings /= 2 = Nothing
  | otherwise = Just . (+) 1 . (-) (fst . last $ findings) . fst . head $ findings
  where
    findings = filter (\(_, v) -> v == x) . zip [0 ..] $ xs

-- lengthOfSequence :: (Eq a) => [a] -> a -> Maybe Int
-- lengthOfSequence xs x = case findIndices (==x) xs of
--                           [a,b] -> Just $ b - a + 1
--                           _     -> Nothing
