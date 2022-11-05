module Kyu7.BallSpec where

import Kyu7.Ball
import Test.Hspec

spec :: Spec
spec = do
  describe "finds the number of bounces" $ do
    it "works on some fixed cases" $ do
      bouncingBall 2 0.5 `shouldBe` 1
      bouncingBall 4 0.5 `shouldBe` 2
      bouncingBall 10 0.1 `shouldBe` 1
      bouncingBall 100 0.1 `shouldBe` 2
      bouncingBall 9 0.3 `shouldBe` 2
      bouncingBall 30 0.3 `shouldBe` 3
