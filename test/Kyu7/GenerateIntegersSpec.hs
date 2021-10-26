module Kyu7.GenerateIntegersSpec where

import Kyu7.GenerateIntegers
import Test.Hspec

spec :: Spec
spec = do
  describe "Example Tests" $
    it "should work with example tests" $ do
      generateIntegers 3 `shouldBe` [0, 1, 2, 3]
      generateIntegers 4 `shouldBe` [0, 1, 2, 3, 4]
      generateIntegers 5 `shouldBe` [0, 1, 2, 3, 4, 5]
