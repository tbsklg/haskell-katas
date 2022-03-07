module Kyu7.SequenceSum2Spec where

import Kyu7.SequenceSum2 (sumOfN)
import Test.Hspec

spec :: Spec
spec = do
  describe "sumOfN" $ do
    it "should work for some examples" $ do
      sumOfN 3    `shouldBe` [0, 1, 3, 6]
      sumOfN 1    `shouldBe` [0, 1]
      sumOfN 0    `shouldBe` [0]
      sumOfN (-4) `shouldBe` [0, -1, -3, -6, -10]
