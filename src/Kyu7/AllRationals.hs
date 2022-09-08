module Kyu7.AllRationals where

allRationals :: [(Integer, Integer)]
allRationals = (1, 1) : nodes [(1, 1)]
  where
    nodes xs = children ++ nodes children
      where
        children = concatMap (\(l, r) -> [(l, l + r), (l + r, r)]) xs
