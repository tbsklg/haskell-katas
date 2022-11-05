module Kyu7.ScrabbleScore where

import Data.Char (toUpper)
import qualified Data.Map as M
import Data.Maybe (fromMaybe)

-- dict :: [(Char, Int)]
-- Contains only uppercase letters and their score
scrabbleScore :: String -> Int
scrabbleScore = sum . map score

score :: Char -> Int
score c = fromMaybe 0 (M.lookup (toUpper c) dict)

dict :: M.Map Char Int
dict =
  M.fromList
    [ ('A', 1),
      ('E', 1),
      ('I', 1),
      ('O', 1),
      ('U', 1),
      ('L', 1),
      ('N', 1),
      ('R', 1),
      ('S', 1),
      ('T', 1),
      ('D', 2),
      ('G', 2),
      ('B', 3),
      ('C', 3),
      ('M', 3),
      ('P', 3),
      ('F', 4),
      ('H', 4),
      ('V', 4),
      ('W', 4),
      ('Y', 4),
      ('K', 5),
      ('J', 8),
      ('X', 8),
      ('Q', 10),
      ('Z', 10)
    ]
