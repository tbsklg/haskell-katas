module Kyu6.SequencesSpec where

import Kyu6.Sequences (getScore)
import Test.Hspec

spec :: Spec
spec = do
  describe "getScore" $ do
    it "should work for some small numbers" $ do
      getScore 1 `shouldBe` 50
      getScore 2 `shouldBe` 150
      getScore 3 `shouldBe` 300
      getScore 4 `shouldBe` 500
      getScore 5 `shouldBe` 750
