module Kyu7.ListOfPresents (howManyGifts) where
import Data.List (sort)

howManyGifts :: Int -> [Int] -> Int
howManyGifts maxBudget =
    length
    . takeWhile (<= maxBudget)
    . scanl1 (+)
    . sort
