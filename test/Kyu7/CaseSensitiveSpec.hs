module Kyu7.CaseSensitiveSpec where

import Kyu7.CaseSensitive
import Test.Hspec

spec = do
  describe "Case Sensitive" $ do
    it "Basic tests" $ do
      caseSensitive "asd" `shouldBe` (True, "")
      caseSensitive "cellS" `shouldBe` (False, "S")
      caseSensitive "z" `shouldBe` (True, "")
      caseSensitive "" `shouldBe` (True, "")
      caseSensitive "codeWarS" `shouldBe` (False, "WS")
