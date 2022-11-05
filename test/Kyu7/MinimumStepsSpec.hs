module Kyu7.MinimumStepsSpec where

import Kyu7.MinimumSteps
import Test.Hspec

spec :: Spec
spec = do
  describe "finds the numbe of adds" $ do
    it "fixed cases" $ do
      minimumSteps [4, 6, 3] 7 `shouldBe` 1
      minimumSteps [10, 9, 9, 8] 17 `shouldBe` 1
      minimumSteps [8, 9, 10, 4, 2] 23 `shouldBe` 3
      minimumSteps [19, 98, 69, 28, 75, 45, 17, 98, 67] 464 `shouldBe` 8
      minimumSteps [4, 6, 3] 2 `shouldBe` 0
