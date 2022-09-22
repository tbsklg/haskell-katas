module Kyu7.SumOfJustsSpec where

import Kyu7.SumOfJusts (sumJusts)
import Test.Hspec

spec :: Spec
spec = do
  describe "Basic tests" $ do
    it "should work for some examples" $ do
      sumJusts [Just 1, Just 2] `shouldBe` Just 3
      sumJusts [Just 1, Just 2, Just 7] `shouldBe` Just 10
