module Kyu7.StatusArraysSpec (spec) where

import Kyu7.StatusArrays (status)
import Test.Hspec

spec :: Spec
spec = do
  it "Example Tests" $ do
    status [6, 9, 3, 8, 2, 3, 1] `shouldBe` [6, 3, 2, 1, 9, 3, 8]

    status [5, 5, 5, 8, 7, -2, -2, -3, 1, 9, 8, 3, -3, 4, -4, 6]
      `shouldBe` [5, -2, -3, 5, -2, 5, 1, -3, -4, 8, 7, 3, 4, 8, 9, 6]

    status [14, -3, 4, 6, 9, 10, -2, 4, 0]
      `shouldBe` [-3, 4, -2, 14, 6, 9, 4, 0, 10]
