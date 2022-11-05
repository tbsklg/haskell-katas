module Kyu7.LargestDigitsSpec where

import Kyu7.LargestDigits (digit5)
import Test.Hspec

spec :: Spec
spec = do
  describe "digit5" $ do
    it "should work for some examples" $ do
      digit5 "7316717" `shouldBe` 73167
      digit5 "1234567898765" `shouldBe` 98765
      digit5 "731674765" `shouldBe` 74765
