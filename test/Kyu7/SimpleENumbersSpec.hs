module Kyu7.SimpleENumbersSpec where

import Kyu7.SimpleENumbers
import Test.Hspec

spec = do
  describe "Simple eviternity numbers" $ do
    it "Basic tests" $ do
      solve 0 100 `shouldBe` 4
      solve 0 1000 `shouldBe` 14
      solve 0 10000 `shouldBe` 37
      solve 0 100000 `shouldBe` 103
      solve 0 500000 `shouldBe` 148
