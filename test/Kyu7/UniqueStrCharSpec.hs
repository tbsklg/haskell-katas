module Kyu7.UniqueStrCharSpec where

import Kyu7.UniqueStrChar
import Test.Hspec

spec :: Spec
spec = do
  describe "Unique String Characters" $ do
    it "Basic tests" $ do
      solve "xyab" "xzca" `shouldBe` "ybzc"
      solve "xyabb" "xzca" `shouldBe` "ybbzc"
      solve "abcd" "xyz" `shouldBe` "abcdxyz"
      solve "xxx" "xzca" `shouldBe` "zca"
