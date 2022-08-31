module Kyu7.SimpleReversiSpec where

import Kyu7.SimpleReversi
import Test.Hspec

spec = do
  describe "Simple reversal game" $ do
    it "Basic tests" $ do
      solve 4 1 `shouldBe` 3
      solve 4 2 `shouldBe` 2
      solve 4 3 `shouldBe` 0
      solve 20 8 `shouldBe` 17
      solve 20 9 `shouldBe` 19
      solve 20 10 `shouldBe` 18
