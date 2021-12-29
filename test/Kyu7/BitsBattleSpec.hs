module Kyu7.BitsBattleSpec (spec) where

import Kyu7.BitsBattle (bitsBattle)
import Test.Hspec

spec :: Spec
spec = do
  it "example tests" $ do
    bitsBattle [5, 3, 14] `shouldBe` "odds win"
    bitsBattle [3, 8, 22, 15, 78] `shouldBe` "evens win"
    bitsBattle [] `shouldBe` "tie"
    bitsBattle [1, 13, 16] `shouldBe` "tie"