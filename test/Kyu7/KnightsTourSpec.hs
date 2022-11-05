module Kyu7.KnightsTourSpec (spec) where

import Kyu7.KnightsTour (check)
import Test.Hspec

spec :: Spec
spec = do
  describe "example tests" $ do
    it "1 x 1" $ do
      check 1 1 `shouldBe` False
    it "2 x 2" $ do
      check 2 2 `shouldBe` False
    it "3 x 3" $ do
      check 3 3 `shouldBe` False
    it "4 x 4" $ do
      check 4 4 `shouldBe` False
    it "5 x 5" $ do
      check 5 5 `shouldBe` True
    it "6 x 6" $ do
      check 6 6 `shouldBe` True
    it "7 x 7" $ do
      check 7 7 `shouldBe` True
    it "8 x 8" $ do
      check 8 8 `shouldBe` True
    it "9 x 9" $ do
      check 9 9 `shouldBe` True
    it "2 x 5" $ do
      check 2 5 `shouldBe` False
    it "2 x 7" $ do
      check 2 7 `shouldBe` False
    it "3 x 5" $ do
      check 3 5 `shouldBe` False
    it "3 x 7" $ do
      check 3 7 `shouldBe` True
    it "4 x 5" $ do
      check 4 5 `shouldBe` True
    it "4 x 7" $ do
      check 4 7 `shouldBe` True
    it "5 x 7" $ do
      check 5 7 `shouldBe` True
    it "6 x 5" $ do
      check 6 5 `shouldBe` True
    it "7 x 5" $ do
      check 7 5 `shouldBe` True
