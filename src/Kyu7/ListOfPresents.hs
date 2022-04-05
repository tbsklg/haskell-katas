module Kyu7.ListOfPresents (howManyGifts) where
import Data.List (sort)

howManyGifts :: Int -> [Int] -> Int
howManyGifts maxBudget = (+ 1)
    . length
    . takeWhile (<= maxBudget)
    . scanl1 (+)
    . sort
