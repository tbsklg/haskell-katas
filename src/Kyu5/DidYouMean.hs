module Kyu5.DidYouMean (findMostSimilar) where

import Data.Array (array, listArray, (!))
import Data.Foldable (minimumBy)
import Data.Function (on)

-- see https://en.wikipedia.org/wiki/Levenshtein_distance
-- see https://www.reddit.com/r/programming/comments/w4gs6/levenshtein_distance_in_haskell/

findMostSimilar :: [String] -> String -> String
findMostSimilar dictionary term = fst . minimumBy (compare `on` snd) . map (\x -> (x, levenshtein x term)) $ dictionary
  where
    levenshtein xs ys = levMemo ! (n, m)
      where
        levMemo = array ((0, 0), (n, m)) [((i, j), lev i j) | i <- [0 .. n], j <- [0 .. m]]
        n = length xs
        m = length ys
        xa = listArray (1, n) xs
        ya = listArray (1, m) ys
        lev 0 v = v
        lev u 0 = u
        lev u v
          | xa ! u == ya ! v = levMemo ! (u - 1, v - 1)
          | otherwise =
              1
                + minimum
                  [ levMemo ! (u, v - 1),
                    levMemo ! (u - 1, v),
                    levMemo ! (u - 1, v - 1)
                  ]
