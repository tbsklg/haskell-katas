module Kyu4.SumByFactorsSpec where

import Kyu4.SumByFactors
import Test.HUnit
import Test.Hspec

spec :: Spec
spec = do
  describe "Sum by Factors" $ do
    it "1st series" $ do
      sumOfDivided [12, 15] `shouldBe` [(2, 12), (3, 27), (5, 15)]
      sumOfDivided [15, 21, 24, 30, 45] `shouldBe` [(2, 54), (3, 135), (5, 90), (7, 21)]
