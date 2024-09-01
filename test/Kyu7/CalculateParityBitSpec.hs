module Kyu7.CalculateParityBitSpec (spec) where

import Kyu7.CalculateParityBit (checkParity)
import Test.Hspec
import Test.HUnit (assertEqual)

spec :: Spec
spec = do
  it "example tests" $ do
    assertEqual "checkParity \"even\" \"101010\"" 1 $ checkParity "even" "101010"
    assertEqual "checkParity \"odd\" \"101010\"" 0 $ checkParity "odd" "101010"
    assertEqual "checkParity \"even\" \"101011\"" 0 $ checkParity "even" "101011"
    assertEqual "checkParity \"odd\" \"101011\"" 1 $ checkParity "odd" "101011"
