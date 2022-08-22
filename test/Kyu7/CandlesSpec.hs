module Kyu7.CandlesSpec where

import Test.Hspec
import Kyu7.Candles

spec :: Spec
spec = do
  it "It should works for basic tests." $ do
    candles 5 2  `shouldBe`   9
    candles 1 2  `shouldBe`   1
    candles 3 3  `shouldBe`   4
    candles 11 3 `shouldBe`  16

-- the following line is optional for 8.2
main = hspec spec
