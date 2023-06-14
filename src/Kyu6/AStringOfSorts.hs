module Kyu6.AStringOfSorts (sortString) where

import Data.List (elemIndex, sortBy)
import Data.Maybe (fromMaybe)

sortString :: String -> String -> String
sortString xs sortRef = sortBy charPosition xs
 where
  charPosition :: Char -> Char -> Ordering
  charPosition a b = compare aIndex bIndex
   where
    aIndex = fromMaybe (length sortRef) . elemIndex a $ sortRef
    bIndex = fromMaybe (length sortRef) . elemIndex b $ sortRef
