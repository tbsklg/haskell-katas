module Kyu6.SelectiveArrayReversingSpec (spec) where

import Kyu6.SelectiveArrayReversing (selReverse)
import Test.Hspec

spec :: Spec
spec = do
  it "example tests" $ do
    selReverse 3 [2, 4, 6, 8, 10, 12, 14, 16] `shouldBe` [6, 4, 2, 12, 10, 8, 16, 14]
    selReverse 2 [1, 2, 3, 4, 5, 6] `shouldBe` [2, 1, 4, 3, 6, 5]
