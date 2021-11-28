module Kyu7.AddSpec (spec) where

import Kyu7.Add (add)
import Test.Hspec

spec :: Spec
spec = do
  describe "Silly addition" $ do
    it "real addition" $ do
      add 2 11 `shouldBe` 13
      add 0 1 `shouldBe` 1
      add 0 0 `shouldBe` 0
    it "silly addition" $ do
      add 16 18 `shouldBe` 214
      add 26 39 `shouldBe` 515
      add 122 81 `shouldBe` 1103
    it "big addition" $ do
      add 1222 30277 `shouldBe` 31499
      add 1236 30977 `shouldBe` 31111013
      add 38810 1383 `shouldBe` 391193
      add 49999 49999 `shouldBe` 818181818
