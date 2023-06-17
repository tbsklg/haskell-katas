module Kyu5.MovingZerosSpec (spec) where

import Kyu5.MovingZeros (moveZeros)
import Test.Hspec

spec :: Spec
spec = do
  it "example tests" $ do
    moveZeros [1, 2, 0, 1, 0, 1, 0, 3, 0, 1] `shouldBe` [1, 2, 1, 1, 3, 1, 0, 0, 0, 0]
