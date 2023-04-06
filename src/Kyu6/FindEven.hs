module Kyu6.FindEven where

findEvenIndex :: [Int] -> Int
findEvenIndex arr = findIndexAt [0 ..]
  where
    findIndexAt (i:is)
      | i == length arr = -1
      | left == right = i
      | otherwise = findIndexAt is
      where
        left = sum . take i $ arr
        right = sum . drop (i + 1) $ arr

-- import Control.Applicative ((<$>), (<*>))
-- import Data.List (elemIndex)
-- import Data.Maybe (fromMaybe)

-- findEvenIndex :: [Int] -> Int
-- findEvenIndex = fromMaybe (-1) . elemIndex True .
--  (zipWith (==) <$> scanl1 (+) <*> scanr1 (+))
