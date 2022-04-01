module Kyu7.NumberClimberSpec where

import Kyu7.NumberClimber
import Test.Hspec

spec :: Spec
spec = do
  describe "Number climber" $ do
    it "Reach a number by doubling the step size at each step." $ do
      climb 13 `shouldBe` [1, 3, 6, 13]
      climb 10 `shouldBe` [1, 2, 5, 10]
      climb 1 `shouldBe` [1]
