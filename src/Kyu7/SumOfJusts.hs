module Kyu7.SumOfJusts where

import Data.Maybe (catMaybes, fromMaybe)

sumJusts :: [Maybe Integer] -> Maybe Integer
sumJusts = Just . sum . catMaybes
