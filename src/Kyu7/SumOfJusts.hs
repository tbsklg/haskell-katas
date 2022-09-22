module Kyu7.SumOfJusts where

import Data.Maybe (fromMaybe, catMaybes)

sumJusts :: [Maybe Integer] -> Maybe Integer
sumJusts = Just . sum . catMaybes
