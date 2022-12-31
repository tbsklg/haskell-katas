module Kyu7.PerpendicularLinesSpec (spec) where

import Kyu7.PerpendicularLines (maxBisectors)
import Test.Hspec

spec :: Spec
spec = do
  it "example tests" $ do
    maxBisectors 0 `shouldBe` 0
    maxBisectors 1 `shouldBe` 0
    maxBisectors 2 `shouldBe` 1
    maxBisectors 3 `shouldBe` 2
    maxBisectors 4 `shouldBe` 4
    maxBisectors 5 `shouldBe` 6
    maxBisectors 6 `shouldBe` 9
    maxBisectors 51 `shouldBe` 650
