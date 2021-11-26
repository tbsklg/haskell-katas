module Kyu7.SeaSick where

seaSick :: String -> String
seaSick x
  | waves x > (fromIntegral (length x) * 0.2) = "Throw Up"
  | otherwise = "No Problem"
  where
    waves [] = 0
    waves [_] = 0
    waves ['_', '~'] = 1
    waves ['~', '_'] = 1
    waves [_, _] = 0
    waves ('_' : '~' : ys) = 1 + waves ('~' : ys)
    waves ('~' : '_' : ys) = 1 + waves ('_' : ys)
    waves (_ : y : ys) = 0 + waves (y : ys)
