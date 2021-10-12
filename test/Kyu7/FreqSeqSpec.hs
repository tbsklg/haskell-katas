module Kyu7.FreqSeqSpec where

import Kyu7.FreqSeq (freqSeq)
import Test.Hspec

spec :: Spec
spec = do
  describe "Example Tests" $
    it "should work with example tests" $ do
      freqSeq "hello world" '-' `shouldBe` "1-1-3-3-2-1-1-2-1-3-1"
      freqSeq "19999999" ':' `shouldBe` "1:7:7:7:7:7:7:7"
      freqSeq "^^^**$" 'x' `shouldBe` "3x3x3x2x2x1"
