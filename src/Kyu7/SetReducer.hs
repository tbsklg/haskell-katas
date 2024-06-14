module Kyu7.SetReducer (setReducer) where

import Data.List (group)

setReducer :: [Int] -> Int
setReducer [x] = x
setReducer xs = setReducer . map length . group $ xs
