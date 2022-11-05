module Kyu7.KataSpec where

import Kyu7.Kata
import Test.Hspec

spec :: Spec
spec = do
  describe "Example Tests" $
    it "should work with example tests" $ do
      countLettersAndDigits "n!!ice!!123" `shouldBe` 7
