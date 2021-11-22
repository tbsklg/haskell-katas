module Kyu7.DoubletonNumberSpec (spec) where

import Kyu7.DoubletonNumber (doubleton)
import Test.Hspec

spec :: Spec
spec = do
  it "example tests" $ do
    doubleton 120 `shouldBe` 121
    doubleton 1234 `shouldBe` 1311
    doubleton 1 `shouldBe` 10
    doubleton 10 `shouldBe` 12
