module Kyu7.GCContent where
-- import Codewars.Kata.GCContent.Types

data Base = A | C | G | T deriving (Eq, Show)

gcContent :: [Base] -> Double
gcContent [] = 0
gcContent xs = fromIntegral gc / (fromIntegral . length $ xs) * 100
    where
        gc = length . filter (\x -> x == G || x == C) $ xs
