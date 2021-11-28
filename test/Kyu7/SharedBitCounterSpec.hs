module Kyu7.SharedBitCounterSpec (spec) where

import Kyu7.SharedBitCounter (sharedBits)
import Test.Hspec

spec :: Spec
spec = do
  it "example tests" $ do
    sharedBits  7 10 `shouldBe` False
    sharedBits  7 15 `shouldBe` True
    sharedBits 10 15 `shouldBe` True
