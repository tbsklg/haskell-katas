module Kyu7.AlphabeticallyOrderedSpec where

import Data.List (sort)
import Kyu7.AlphabeticallyOrdered
import Test.Hspec
import Test.QuickCheck

spec = do
  describe "Alphabetically Ordered" $ do
    it "Basic tests" $ do
      alphabetic "asd" `shouldBe` False
      alphabetic "codewars" `shouldBe` False
      alphabetic "door" `shouldBe` True
      alphabetic "z" `shouldBe` True
      alphabetic "" `shouldBe` True
