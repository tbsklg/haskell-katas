module Kyu5.SmallfuckSpec where

import Data.Char
import qualified Data.Map.Strict as M
import Kyu5.Smallfuck
import Test.Hspec

spec :: Spec
spec = do
  describe "Your SmallFuck" $ do
    it "should work for some example test cases" $ do
      -- Flips the leftmost cell of the tape
      interpreter "*" "00101100" `shouldBe` "10101100"
      -- Flips the second and third cell of the tape
      interpreter ">*>*" "00101100" `shouldBe` "01001100"
      -- Flips all the bits in the tape
      interpreter "*>*>*>*>*>*>*>*" "00101100" `shouldBe` "11010011"
      -- Flips all the bits that are initialized to 0
      interpreter "*>*>>*>>>*>*" "00101100" `shouldBe` "11111111"
      -- Goes somewhere to the right of the tape and then flips all bits that
      -- are initialized to 1, progressing leftwards through the tape
      interpreter ">>>>>*<*<<*" "00101100" `shouldBe` "00000000"
      interpreter "*[>*]" "0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000" `shouldBe` "1111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111"
