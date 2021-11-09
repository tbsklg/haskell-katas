module Kyu7.PartridgeWatch where

import Data.List (intersect)

part :: [String] -> String
part s
  | numberOfRelatedTerms > 0 = "Mine's a Pint" ++ replicate numberOfRelatedTerms '!'
  | otherwise = "Lynn, I've pierced my foot on a spike!!"
  where
    numberOfRelatedTerms = length $ s `intersect` patrige

patrige :: [[Char]]
patrige = ["Partridge", "PearTree", "Chat", "Dan", "Toblerone", "Lynn", "AlphaPapa", "Nomad"]
