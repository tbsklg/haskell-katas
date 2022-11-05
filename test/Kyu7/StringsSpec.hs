module Kyu7.StringsSpec (spec, main) where

import Kyu7.Strings (doubleCheck)
import Test.Hspec

main = hspec spec

spec = do
  describe "doubleCheck" $ do
    it "works for some examples" $ do
      doubleCheck "abca" `shouldBe` False
      doubleCheck "aabc" `shouldBe` True
      doubleCheck "a 11 c d" `shouldBe` True
      doubleCheck "AabBcC" `shouldBe` True
      doubleCheck "a b  c" `shouldBe` True
      doubleCheck "a b c d e f g h i h k" `shouldBe` False
      doubleCheck "2020" `shouldBe` False
      doubleCheck "a!@€£#$%^&*()_-+=}]{[|\':;?/>.<,~" `shouldBe` False
