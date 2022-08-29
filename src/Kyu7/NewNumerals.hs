module Kyu7.NewNumerals where

import Data.Char (isUpper, chr)
import Text.Printf (printf)

newNumeralSystem :: Char -> [String]
newNumeralSystem c =
  map
    ( uncurry (printf "%s + %s")
        . (\(x, y) -> ([chr x], [chr y]))
    )
    . takeWhile (uncurry (<=))
    . zip xs
    . reverse
    $ xs
  where
    xs = [offset .. (fromEnum c)]

    offset
      | isUpper c = 65
      | otherwise = 96
