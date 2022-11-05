module Kyu7.EvaporatorSpec where

import Kyu7.Evaporator
import Test.HUnit
import Test.Hspec

spec :: Spec
spec = do
  describe "Evaporator" $ do
    it "1st series" $ do
      evaporator 10 10 10 `shouldBe` 22
      evaporator 10 10 5 `shouldBe` 29
