module Kyu7.PowerSetCountingSpec where

import Kyu7.PowerSetCounting
import Test.Hspec

spec :: Spec
spec = do
  describe "Simple tests" $ do
    it "Order tests" $ do
      powers [1, 2, 3] `shouldBe` 8
      powers [2, 1, 3] `shouldBe` 8
      powers [3, 1, 2] `shouldBe` 8
    it "Type tests" $ do
      powers ['1', '2', '3'] `shouldBe` 8
      powers [True, False, False] `shouldBe` 8
