module Kyu7.ConsecutiveDifferencesSpec (spec) where

import Kyu7.ConsecutiveDifferences (differences)
import Test.Hspec

spec :: Spec
spec = do
  it "example tests" $ do
    differences [1, 2, 3] `shouldBe` 0
    differences [1, 5, 2, 7, 8, 9, 0] `shouldBe` 1
    differences [2, 3, 1] `shouldBe` 1
    differences [-1, 2, 3] `shouldBe` 2
