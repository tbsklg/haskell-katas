module Kyu6.StringTransformerSpec where

import Kyu6.StringTransformer
import Test.Hspec

spec = do
  describe "String Transformer" $ do
    it "Basic tests" $ do
      stringTransformer "Example Input" `shouldBe` "iNPUT eXAMPLE"
