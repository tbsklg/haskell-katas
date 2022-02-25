module Kyu7.DontGiveMeFiveSpec where

import Test.Hspec
import Kyu7.DontGiveMeFive (dontGiveMeFive)

spec :: Spec
spec = do
  describe "Example Tests" $
    it "should work with example tests" $ do
      dontGiveMeFive 1 9  `shouldBe` 8
      dontGiveMeFive 4 17 `shouldBe` 12
      dontGiveMeFive 1 90 `shouldBe` 72
