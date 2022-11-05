module Kyu7.ExtraPerfectSpec where

import Kyu7.ExtraPerfect
import Test.Hspec

spec :: Spec
spec = do
  describe "looks for extra perfect numbers" $ do
    it "returns the lists for a few fixed cases" $ do
      extraPerfect 3 `shouldBe` [1, 3]
      extraPerfect 5 `shouldBe` [1, 3, 5]
      extraPerfect 7 `shouldBe` [1, 3, 5, 7]
      extraPerfect 28 `shouldBe` [1, 3, 5, 7, 9, 11, 13, 15, 17, 19, 21, 23, 25, 27]
      extraPerfect 39 `shouldBe` [1, 3, 5, 7, 9, 11, 13, 15, 17, 19, 21, 23, 25, 27, 29, 31, 33, 35, 37, 39]
