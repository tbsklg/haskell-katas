module Kyu7.FixCodeSpec where

import Kyu7.FixCode
import Test.Hspec

spec = do
  describe "Create palindrome" $ do
    it "Basic tests" $ do
      solve "abba" `shouldBe` True
      solve "abaazaba" `shouldBe` False
      solve "abccba" `shouldBe` True
      solve "adfa" `shouldBe` True
      solve "ae" `shouldBe` False
      solve "abzy" `shouldBe` False
      solve "ababbaba" `shouldBe` True
      solve "sq" `shouldBe` True
      solve "kxbkwgyydkcbtjcosgikfdyhuuprubpwthgflucpyylbofvqxkkvqthmdnywpaunfihvupbwpruwfybdmgeuocltdaidyyewmbzm" `shouldBe` True
