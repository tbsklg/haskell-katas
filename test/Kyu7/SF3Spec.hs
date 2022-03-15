module Kyu7.SF3Spec where

import Test.Hspec
import Kyu7.SF3

-- `spec` of type `Spec` must exist
spec :: Spec
spec = do
  it "finds the digit sum" $ do
    lateRide 240 `shouldBe`  4
    lateRide 808 `shouldBe`  14
    lateRide 1439 `shouldBe`  19
    lateRide 0 `shouldBe`  0
    lateRide 23 `shouldBe`  5
    lateRide 8 `shouldBe`  8

   
-- the following line is optional for 8.2
main = hspec spec
