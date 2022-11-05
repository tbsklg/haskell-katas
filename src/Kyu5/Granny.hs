module Kyu5.Granny where

import qualified Data.Map as M
import Data.Maybe (mapMaybe)

tour :: [String] -> [(String, String)] -> [(String, Double)] -> Integer
tour friends fTowns distTable = floor . distance . combine (M.fromList fTowns) (M.fromList distTable) $ friends

combine :: M.Map String String -> M.Map String Double -> [String] -> [Double]
combine fTowns distTable = mapMaybe (`M.lookup` distTable) . mapMaybe (`M.lookup` fTowns)

distance :: [Double] -> Double
distance d = head d + (sum . zipWith (\x y -> sqrt (y ^ 2 - x ^ 2)) d $ tail d) + last d
