module Kyu7.Boredom where

import Data.Maybe (fromJust)

data Department = ACCOUNTS | FINANCE | CANTEEN | REGULATION | TRADING | CHANGE | IS | RETAIL | CLEANING | PISSING_ABOUT deriving (Bounded, Enum, Show, Eq)

boredom :: [(String, Department)] -> String
boredom t
  | score <= 80 = "kill me now"
  | score > 80 && score < 100 = "i can handle this"
  | otherwise = "party time!!"
  where
    score = sum . map (\(_, d) -> fromJust . lookup d $ departments) $ t

departments :: [(Department, Integer)]
departments =
  [ (ACCOUNTS, 1),
    (FINANCE, 2),
    (CANTEEN, 10),
    (REGULATION, 3),
    (TRADING, 6),
    (CHANGE, 6),
    (IS, 8),
    (RETAIL, 5),
    (CLEANING, 4),
    (PISSING_ABOUT, 25)
  ]
