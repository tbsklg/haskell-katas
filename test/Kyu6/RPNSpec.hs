module Kyu6.RPNSpec where

import Kyu6.RPN
import Test.Hspec
import Test.QuickCheck

spec :: Spec
spec = do
  describe "The rpn evaluator" $ do
    it "should work with the empty string" $
      calc "" `shouldBe` 0
    it "should parse numbers" $
      calc "3" `shouldBe` 3
    it "should parse float numbers" $
      calc "3.5" `shouldBe` 3.5
    it "should support addition" $
      calc "1 3 +" `shouldBe` 4
    it "should support multiplication" $
      calc "1 3 *" `shouldBe` 3
    it "should support substraction" $
      calc "1 3 -" `shouldBe` (-2)
    it "should support division" $
      calc "4 2 /" `shouldBe` 2
