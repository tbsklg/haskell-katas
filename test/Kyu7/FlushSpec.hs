module Kyu7.FlushSpec where

-- Tests can be written using Hspec http://hspec.github.io/
-- Replace this with your own tests.

import Kyu7.Flush
import Test.Hspec

-- `spec` of type `Spec` must exist
spec :: Spec
spec = do
  describe "checks for flush" $ do
    it "a few fixed cases" $ do
      isFlush (["AS", "3S", "9S", "KS", "4S"]) `shouldBe` True
      isFlush (["AD", "4S", "7H", "KC", "5S"]) `shouldBe` False
      isFlush (["AD", "4S", "10H", "KC", "5S"]) `shouldBe` False
      isFlush (["QD", "4D", "10D", "KD", "5D"]) `shouldBe` True

-- the following line is optional for 8.2
main = hspec spec
