module Kyu7.ParsableSpec where

import Kyu7.Parsable
import Test.Hspec

spec :: Spec
spec = do
  describe "Example tests" $ do
    it "Put your own tests here:" $ do
      parses "2193" `shouldBe` True
      parses "-437104" `shouldBe` True
      parses "4321.0432" `shouldBe` False
      parses "" `shouldBe` False
