module Kyu7.Operation2Spec where

import Kyu7.Operation2
import Test.Hspec
import Test.QuickCheck

spec :: Spec
spec = do
  describe "Example Tests" $
    it "should work with example tests" $ do
      arithmetic 5 2 Add `shouldBe` 7
      arithmetic 8 2 Subtract `shouldBe` 6
      arithmetic 5 2 Multiply `shouldBe` 10
      arithmetic 8 2 Divide `shouldBe` 4
