module Kyu7.SumStringsSpec where

import Kyu7.SumStrings
import Test.Hspec

spec :: Spec
spec = do
  describe "Sum of integers in string" $ do
    it "Basic tests" $ do
      sumOfIntegersInString "12.4" `shouldBe` 16
      sumOfIntegersInString "h3ll0w0rld" `shouldBe` 3
      sumOfIntegersInString "2 + 3 = " `shouldBe` 5
      sumOfIntegersInString "Our company made approximately 1 million in gross revenue last quarter." `shouldBe` 1
      sumOfIntegersInString "The Great Depression lasted from 1929 to 1939" `shouldBe` 3868
      sumOfIntegersInString "Dogs are our best friends." `shouldBe` 0
      sumOfIntegersInString "The30quick20brown10f0x1203jumps914ov3r1349the102l4zy dog" `shouldBe` 3635
