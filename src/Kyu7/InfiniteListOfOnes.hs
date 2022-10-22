module Kyu7.InfiniteListOfOnes where

import Prelude hiding (cycle, repeat, replicate, take)

getInfiniteListOfOnes :: [Int]
getInfiniteListOfOnes = 1 : getInfiniteListOfOnes
