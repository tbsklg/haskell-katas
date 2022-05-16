module Kyu7.SimpleFibStringsSpec where

import Kyu7.SimpleFibStrings
import Test.Hspec

spec :: Spec
spec = do
  describe "Simple fibonacci strings" $ do
    it "Basic tests" $ do
      solve 0 `shouldBe` "0"
      solve 1 `shouldBe` "01"
      solve 2 `shouldBe` "010"
      solve 3 `shouldBe` "01001"
      solve 5 `shouldBe` "0100101001001"
