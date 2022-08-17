module Kyu7.Sum2TotalSpec where

import Kyu7.Sum2Total (total)
import Test.Hspec

spec :: Spec
spec = do
  describe "total" $ do
    it "should work for the examples" $ do
      total [1..5]     `shouldBe` (48)
      total [5,4..1]   `shouldBe` (48)
      total [-1,-1,-1] `shouldBe` (-4)
      total [1,2,3,4]  `shouldBe` (20)
