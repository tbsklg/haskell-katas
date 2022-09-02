module Kyu7.FinalSpec where

import Test.Hspec
import Kyu7.Final (finalAttackValue)

spec :: Spec
spec = do
  describe "Sample tests" $ do
    it "works on some simple cases" $ do
      finalAttackValue 50 [50,105,200] `shouldBe` 110
      finalAttackValue 20 [30,20,15,40,100] `shouldBe` 205
