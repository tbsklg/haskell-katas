module Kyu7.FailedFilter (
  filterNumbers
  ) where

import Data.Char (isAlpha)

filterNumbers :: String -> String
filterNumbers = filter isAlpha
