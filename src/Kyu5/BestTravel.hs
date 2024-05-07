module Kyu5.BestTravel where

import Data.List (sortBy)
import Data.Ord (Down (..), comparing)

type MaxDistance = Int

type MaxTowns = Int

type Distances = [Int]

type Distance = Int

chooseBestSum :: MaxDistance -> MaxTowns -> Distances -> Maybe Distance
chooseBestSum t k =
  headMay
  -- seee https://ro-che.info/articles/2016-04-02-descending-sort-haskell
    . sortBy (comparing Down)
    . filter (<= t)
    . map sum
    . possibleRoutes k

possibleRoutes :: MaxTowns -> Distances -> [Distances]
possibleRoutes 0 [] = [[]]
possibleRoutes _ [] = []
possibleRoutes n (x : xs) =
  map (x :) (possibleRoutes (n - 1) xs) ++ possibleRoutes n xs

headMay :: (Ord a) => [a] -> Maybe a
headMay [] = Nothing
headMay xs = Just . head $ xs
