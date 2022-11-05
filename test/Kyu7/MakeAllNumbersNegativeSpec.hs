module Kyu7.MakeAllNumbersNegativeSpec where

import Kyu7.MakeAllNumbersNegative
import Test.Hspec
import Test.QuickCheck

spec :: Spec
spec = do
  describe "The makeNegative function" $ do
    it "should work for some examples" $ do
      makeNegative [0] `shouldBe` [0]
      makeNegative [1] `shouldBe` [-1]
      makeNegative [1, 2, 3] `shouldBe` [-1, -2, -3]
