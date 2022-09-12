module Kyu7.Complex where

data Complex = Complex Double Double
  deriving (Eq, Show)

real,imaginary :: Complex -> Double
real (Complex a _) = a 
imaginary (Complex _ b) = b

-- You are not required to provide a full working instance
-- Only addition and multiplication will be tested
instance Num Complex where
  (+) (Complex a b) (Complex a' b') = Complex (a + a') (b + b')
  (*) (Complex a b) (Complex a' b') = Complex (a * a' - b * b') (a * b' + a' * b)
  (-) = undefined
  negate = undefined
  abs = undefined
  signum = undefined
  fromInteger = undefined
