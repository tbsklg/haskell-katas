module Kyu7.TrueOrFalseSpec where

import Prelude hiding (Bool (..), (&&), (||), not, otherwise)

import Kyu7.TrueOrFalse

import Test.Hspec
import Test.QuickCheck
import Codewars

spec :: Spec
spec = do
  describe "basics" $ do
    it "&&" $ do
      True && True `shouldBe` True
      True && False `shouldBe` False
      False && True `shouldBe` False
      False && False `shouldBe` False
    it "||" $ do
      True || True `shouldBe` True
      True || False `shouldBe` True
      False || True `shouldBe` True
      False || False `shouldBe` False
    it "not" $ do
      not True `shouldBe` False
      not False `shouldBe` True
    it "otherwise" $ do
      otherwise `shouldBe` True
    it "bool" $ do
      bool 0 1 True `shouldBe` 1
      bool 0 1 False `shouldBe` 0
