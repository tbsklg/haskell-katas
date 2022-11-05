module Kyu7.SumTriSpec where

import Kyu7.SumTri
import Test.Hspec

spec :: Spec
spec = do
  describe "Sum of trangular numbers" $ do
    it "Sample tests" $ do
      sunTriNumbers (-19) `shouldBe` 0
      sunTriNumbers 0 `shouldBe` 0
      sunTriNumbers 4 `shouldBe` 20
      sunTriNumbers 48 `shouldBe` 19600
      sunTriNumbers 579 `shouldBe` 32518570
      sunTriNumbers 1771 `shouldBe` 927341646
