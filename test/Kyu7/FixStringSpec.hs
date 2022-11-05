module Kyu7.FixStringSpec where

import Kyu7.FixString
import Test.Hspec

spec = do
  describe "Fix String Case" $ do
    it "Basic tests" $ do
      solve "code" `shouldBe` "code"
      solve "CODe" `shouldBe` "CODE"
      solve "COde" `shouldBe` "code"
      solve "Code" `shouldBe` "code"
