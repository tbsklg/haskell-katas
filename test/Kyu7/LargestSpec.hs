module Kyu7.LargestSpec where

import Kyu7.Largest (largest)
import Test.Hspec

spec :: Spec
spec = do
  describe "Sorted examples" $ do
    it "should work on some basic examples" $ do
      largest 1 [4,5,6] `shouldBe` [6]
      largest 2 [5,6,4] `shouldBe` [5,6]
      largest 3 "example" `shouldBe` "mpx"
