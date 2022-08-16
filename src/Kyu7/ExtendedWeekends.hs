module Kyu7.ExtendedWeekends where

import Data.Time (DayOfWeek (Friday), dayOfWeek, fromGregorian, gregorianMonthLength)
import Data.Time.Calendar (toGregorian)

solve :: Integer -> Integer -> (String, String, Int)
solve a b = (month !! fromM, month !! toM, length days)
    where
        fromM = (\x -> x - 1) . head . map ((\(_, m, _) -> m) . toGregorian) $ days
        toM = (\x -> x - 1) . last . map ((\(_, m, _) -> m) . toGregorian) $ days

        days =
            concatMap
                ( \y ->
                    filter (\d -> dayOfWeek d == Friday)
                    . map (\m -> fromGregorian y m 1)
                    . filter (\m -> gregorianMonthLength y m == 31)
                    $ [1 .. 12]
                )
                [a .. b]


month :: [[Char]]
month = ["Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"]
