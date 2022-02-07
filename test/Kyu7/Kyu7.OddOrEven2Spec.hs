module Kyu7.OddOrEven2Spec (spec) where

import Kyu7.OddOrEven2 (Parity(..), oddOrEven)
import Test.Hspec

spec :: Spec
spec = do
  it "example tests" $ do
    oddOrEven 1 `shouldBe` EITHER
    oddOrEven 6 `shouldBe` ODD
    oddOrEven 8 `shouldBe` EVEN