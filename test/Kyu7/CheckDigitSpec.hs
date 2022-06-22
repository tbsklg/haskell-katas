module Kyu7.CheckDigitSpec where

import Kyu7.CheckDigit
import Test.Hspec

spec :: Spec
spec = do
  describe "Check Digit" $ do
    it "Basic tests" $ do
      checkDigit 1234567 1 0 1 `shouldBe` True
      checkDigit 1234567 0 1 2 `shouldBe` True
      checkDigit 67845123654 4 2 4 `shouldBe` True
      checkDigit 6668844536485 0 0 6 `shouldBe` True 
      checkDigit 9999999999 2 5 1 `shouldBe` False
