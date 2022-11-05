module Kyu7.Remove3Spec where

import Kyu7.Remove3
import Test.Hspec

spec :: Spec
spec = do
  describe "Example Tests" $
    it "should work with example tests" $ do
      remove "Hi!" `shouldBe` "Hi"
      remove "Hi!!!" `shouldBe` "Hi"
      remove "!Hi" `shouldBe` "!Hi"
      remove "!Hi!" `shouldBe` "!Hi"
      remove "Hi! Hi!" `shouldBe` "Hi Hi"
      remove "!!!Hi !!hi!!! !hi" `shouldBe` "!!!Hi !!hi !hi"
