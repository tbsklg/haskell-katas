module Kyu7.Seven where

seven :: Integer -> (Integer, Int)
seven 0 = (0, 0)
seven 7 = (7, 1)
seven m = calcDivisibility m 1
  where
    calcDivisibility m count
      | hasAtMostTwoDigits current = (current, count)
      | otherwise = calcDivisibility current (count + 1)
      where
          current = y m

hasAtMostTwoDigits :: Integral a => a -> Bool
hasAtMostTwoDigits x =  x <= 99

y :: Integral a => a -> a
y x = firstDigits - 2 * lastDigit
  where
    firstDigits = x `div` 10
    lastDigit = x `mod` 10
