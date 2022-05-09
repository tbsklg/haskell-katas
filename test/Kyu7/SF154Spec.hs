module Kyu7.SF154Spec (spec) where

import Kyu7.SF154 (zeroAndOne)
import Test.Hspec

spec :: Spec
spec = do
  it "works on some fixed tests" $ do
    zeroAndOne "01010" `shouldBe` 1
    zeroAndOne "11101111" `shouldBe` 6
    zeroAndOne "01" `shouldBe` 0
    zeroAndOne "10" `shouldBe` 0
    zeroAndOne "110110" `shouldBe` 2
