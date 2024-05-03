module Kyu6.SimpleNumberSequenceSpec (spec) where

import Kyu6.SimpleNumberSequence (missing)
import Test.Hspec

spec = do
  describe "Simple number sequence" $ do
    it "Example tests" $ do
      missing "123567" `shouldBe` Just 4
      missing "899091939495" `shouldBe` Just 92
      missing "9899101102" `shouldBe` Just 100
      missing "599600601602" `shouldBe` Nothing
      missing "8990919395" `shouldBe` Nothing
      missing "998999100010011003" `shouldBe` Just 1002
      missing "99991000110002" `shouldBe` Just 10000
      missing "979899100101102" `shouldBe` Nothing
      missing "900001900002900004900005900006" `shouldBe` Just 900003
