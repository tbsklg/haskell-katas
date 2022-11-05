module Kyu7.SimpleStrRevSpec where

import Kyu7.SimpleStrRev
import Test.Hspec
import Test.QuickCheck

spec :: Spec
spec = do
  describe "Simple string reversal II" $ do
    it "Basic tests" $ do
      solve "codewars" 1 5 `shouldBe` "cawedors"
      solve "codingIsFun" 2 100 `shouldBe` "conuFsIgnid"
      solve "FunctionalProgramming" 2 15 `shouldBe` "FuargorPlanoitcnmming"
      solve "abcefghijklmnopqrstuvwxyz" 0 20 `shouldBe` "vutsrqponmlkjihgfecbawxyz"
      solve "abcefghijklmnopqrstuvwxyz" 5 20 `shouldBe` "abcefvutsrqponmlkjihgwxyz"
