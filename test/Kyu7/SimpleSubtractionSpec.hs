module Kyu7.SimpleSubtractionSpec where

import Kyu7.SimpleSubtraction
import Test.Hspec

spec = do
  describe "Simple subtraction" $ do
    it "Basic tests" $ do
      solve 6 19 `shouldBe` [6, 7]
      solve 2 1 `shouldBe` [0, 1]
      solve 22 5 `shouldBe` [0, 1]
      solve 2 10 `shouldBe` [2, 2]
