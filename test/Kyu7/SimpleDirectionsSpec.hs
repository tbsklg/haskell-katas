module Kyu7.SimpleDirectionsSpec where

import Kyu7.SimpleDirections
import Test.Hspec

spec = do
  describe "Simple directions reversal" $ do
    it "Basic tests" $ do
      solve ["Begin on 3rd Blvd", "Right on First Road", "Left on 9th Dr"]
        `shouldBe` ["Begin on 9th Dr", "Right on First Road", "Left on 3rd Blvd"]
      solve ["Begin on Road A", "Right on Road B", "Right on Road C", "Left on Road D"] `shouldBe` ["Begin on Road D", "Right on Road C", "Left on Road B", "Left on Road A"]
      solve ["Begin on Road A"] `shouldBe` ["Begin on Road A"]
