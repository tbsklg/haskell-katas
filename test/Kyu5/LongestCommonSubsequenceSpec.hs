module Kyu5.LongestCommonSubsequenceSpec where

import Kyu5.LongestCommonSubsequence (lcs)
import Test.Hspec

spec :: Spec
spec = do
  describe "lcs" $ do
    it "should work on some examples" $ do
      lcs "a" "b" `shouldBe` ""
      lcs "abcdef" "abc" `shouldBe` "abc"
      lcs "132535365" "123456789" `shouldBe` "12356"
      lcs "\US\1087599\54403\1096902eT\36868" "&T\110928Q[" `shouldBe` "T"
