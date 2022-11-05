module Kyu7.BaristaSpec (spec) where

import Kyu7.Barista (barista)
import Test.Hspec

spec :: Spec
spec = do
  it "example tests" $ do
    barista [3, 2, 5, 10, 9] `shouldBe` 85
    barista [20, 5] `shouldBe` 32
    barista [4, 3, 2] `shouldBe` 22
    barista [20, 5, 4, 3, 1, 5, 7, 8] `shouldBe` 211
    barista [5, 4, 3, 2, 1] `shouldBe` 55
