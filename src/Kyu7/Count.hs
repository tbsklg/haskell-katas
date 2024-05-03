module Kyu7.Count where

import Control.Arrow ((&&&))
import Data.List (group, sort)

countSpecDigits :: [Int] -> [Int] -> [(Int, Int)]
countSpecDigits a =
  map
    ( \x -> case lookup x dict of
        Just a -> (x, a)
        _ -> (x, 0)
    )
  where
    dict = map (head &&& length) . group . sort . concatMap digits $ a

digits :: (Integral a) => a -> [a]
digits 0 = [0]
digits x = go x
  where
    go 0 = []
    go x = go (abs x `div` 10) ++ [abs x `mod` 10]
