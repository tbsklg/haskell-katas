module Kyu7.MultiplesSpec (spec) where

import Test.Hspec
import Kyu7.Multiples (multiples)

spec :: Spec
spec = do
  it "finds the multiples" $ do
    multiples 3  5 `shouldBe` [5, 10, 15]
    multiples 1  3.14 `shouldBe` [3.14]
    multiples 5  (-1.0) `shouldBe` [-1.0, -2.0, -3.0, -4.0, -5.0]
