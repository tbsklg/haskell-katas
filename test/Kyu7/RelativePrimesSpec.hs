module Kyu7.RelativePrimesSpec where

import Kyu7.RelativePrimes
import Test.Hspec
import Test.QuickCheck

spec :: Spec
spec = do
  describe "Basic Tests" $ do
    it "8   [1,2,3,4,5,6,7]" $ relativelyPrime 8 [1, 2, 3, 4, 5, 6, 7] `shouldBe` [1, 3, 5, 7]
    it "15  [72,27,32,61,77,11,40]" $ relativelyPrime 15 [72, 27, 32, 61, 77, 11, 40] `shouldBe` [32, 61, 77, 11]
    it "210 [15,100,2222222,6,4,12369,99]" $ relativelyPrime 210 [15, 100, 2222222, 6, 4, 12369, 99] `shouldBe` []
