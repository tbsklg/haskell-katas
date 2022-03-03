module Kyu7.Office2 where

import qualified Data.Map as M

outed :: [(String, Int)] -> String -> String
outed m b
  | (fromIntegral h / fromIntegral n) <= 5 = "Get Out Now!"
  | otherwise = "Nice Work Champ!"
  where
    m' = M.fromListWith (+) m
    n = length m
    h = case M.lookup b m' of
      Just a -> (+) (a * 2) . sum . map snd . filter (\(a, _) -> a /= b) . M.toList $ m'
      _ -> sum . map snd . M.toList $ m'
