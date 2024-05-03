module Kyu6.BouncingBallSpec (spec, main) where

import Kyu6.BouncingBall
import Test.Hspec

main = hspec spec

spec = do
  describe "BouncingBall" $ do
    it "1st series" $ do
      bouncingBall 3.0 0.66 1.5 `shouldBe` 3
      bouncingBall 30.0 0.66 1.5 `shouldBe` 15
