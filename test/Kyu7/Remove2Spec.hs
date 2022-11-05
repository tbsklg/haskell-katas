module Kyu7.Remove2Spec where

import Kyu7.Remove2
import Test.Hspec

spec :: Spec
spec = do
  describe "Example Tests" $
    it "should work with example tests" $ do
      remove "Hi!" `shouldBe` "Hi!"
      remove "Hi!!!" `shouldBe` "Hi!!!"
      remove "!Hi" `shouldBe` "Hi"
      remove "!Hi!" `shouldBe` "Hi!"
      remove "Hi! Hi!" `shouldBe` "Hi Hi!"
      remove "Hi" `shouldBe` "Hi"
