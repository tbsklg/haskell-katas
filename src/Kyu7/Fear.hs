module Kyu7.Fear {- of the dark -} where

amIAfraid :: String -> Int -> Bool
amIAfraid "Monday" 12 = True
amIAfraid "Tuesday" n = n > 95
amIAfraid "Wednesday" 34 = True
amIAfraid "Thursday" 0 = True
amIAfraid "Friday" n = even n
amIAfraid "Saturday" 56 = True
amIAfraid "Sunday" n = abs n == 666
amIAfraid _ _ = False
