module Kyu7.UnluckyDays where

import Data.Time (DayOfWeek (Friday), dayOfWeek, fromGregorian)

unluckyDays :: Integer -> Int
unluckyDays year = length [day | day <- map (\month -> dayOfWeek . fromGregorian year month $ 13) [1 .. 12], day == Friday]
