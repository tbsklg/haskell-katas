module Kyu7.CreditCardIssuerSpec where

import Kyu7.CreditCardIssuer
import Test.Hspec

spec :: Spec
spec = do
  describe "getIssuer" $ do
    it "It should detect a VISA card" $ do
      (getIssuer 4111111111111111) `shouldBe` "VISA"
    it "It should detect an AMEX card" $ do
      (getIssuer 378282246310005) `shouldBe` "AMEX"
    it "It should return Unknown for unfindables" $ do
      (getIssuer 9111111111111111) `shouldBe` "Unknown"
