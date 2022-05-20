module Kyu7.SpinningRingsSpec (spec) where

import Kyu7.SpinningRings (spinningRings)
import Test.Hspec

spec :: Spec
spec = do
  it "example tests" $ do
    spinningRings 2 3 `shouldBe` 5
    spinningRings 3 2 `shouldBe` 2
    spinningRings 1 1 `shouldBe` 1
    spinningRings 2 2 `shouldBe` 3
    spinningRings 3 3 `shouldBe` 2
