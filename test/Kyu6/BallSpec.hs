{-# OPTIONS -fno-warn-tabs #-}

module Kyu6.BallSpec (spec) where

import Kyu6.Ball (maxBall)
import Test.Hspec
import Test.QuickCheck
import Text.Printf (printf)

testBall :: Int -> Int -> Spec
testBall v0 u =
  it (printf "should return maxBall for v: %d " v0) $
    maxBall v0 `shouldBe` u

main = hspec spec

spec = do
  describe "maxBall" $ do
    testBall 37 10
    testBall 45 13
    testBall 99 28
    testBall 85 24
