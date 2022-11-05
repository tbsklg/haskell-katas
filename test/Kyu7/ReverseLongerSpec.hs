module Kyu7.ReverseLongerSpec where

import Kyu7.ReverseLonger (reverseLonger)
import Test.Hspec

spec :: Spec
spec = do
  describe "reverseLonger" $ do
    it "should work for the examples" $ do
      reverseLonger "first" "abcde" `shouldBe` "abcdetsrifabcde"
      reverseLonger "hello" "bau" `shouldBe` "bauollehbau"
      reverseLonger "abcde" "fghi" `shouldBe` "fghiedcbafghi"
