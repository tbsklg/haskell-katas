module Kyu6.SortOddEvenDifferentlySpec (spec) where

import Test.Hspec
import Kyu6.SortOddEvenDifferently (paritySort)

spec :: Spec
spec = do
  it "example tests" $ do
    paritySort [5, 3, 2, 8, 1, 4, 11] `shouldBe` [1, 3, 8, 4, 5, 2, 11]
    paritySort [2, 22, 37, 11, 4, 1, 5, 0] `shouldBe` [22, 4, 1, 5, 2, 11, 37, 0]
    paritySort [1, 111, 11, 11, 2, 1, 5, 0] `shouldBe` [1, 1, 5, 11, 2, 11, 111, 0]
    paritySort [] `shouldBe` []
