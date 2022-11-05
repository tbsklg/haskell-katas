module Kyu7.AlphabetSymSpec (spec, main) where

import Kyu7.AlphabetSym
import Test.Hspec

main = hspec spec

spec = do
  describe "Alphabet Symmetry" $ do
    it "Basic tests" $ do
      solve ["abode", "ABc", "xyzD"] `shouldBe` [4, 3, 1]
      solve ["abide", "ABc", "xyz"] `shouldBe` [4, 3, 0]
      solve ["IAMDEFANDJKL", "thedefgh", "xyzDEFghijabc"] `shouldBe` [6, 5, 7]
      solve ["encode", "abc", "xyzD", "ABmD"] `shouldBe` [1, 3, 1, 3]
