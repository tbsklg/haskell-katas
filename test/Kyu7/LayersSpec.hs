module Kyu7.LayersSpec where

import Test.Hspec
import Kyu7.Layers

spec :: Spec
spec = do
  describe "it finds the layers, it does my precious" $ do
    it "on a few fixed cases" $ do
      layers 1 `shouldBe` 1
      layers 5 `shouldBe` 2
      layers 25 `shouldBe` 3
      layers 30 `shouldBe` 4
      layers 50 `shouldBe` 5
