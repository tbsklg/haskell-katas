module Kyu6.XbonacciSpec where

import Kyu6.Xbonacci (xbonacci)
import Test.Hspec
import Test.QuickCheck

examples = do
  it "should work for some examples" $ do
    xbonacci [0, 1] 10 `shouldBe` [0, 1, 1, 2, 3, 5, 8, 13, 21, 34]
    xbonacci [1, 1] 10 `shouldBe` [1, 1, 2, 3, 5, 8, 13, 21, 34, 55]
    xbonacci [0, 0, 0, 0, 1] 10 `shouldBe` [0, 0, 0, 0, 1, 1, 2, 4, 8, 16]
    xbonacci [1, 0, 0, 0, 0, 0, 1] 10 `shouldBe` [1, 0, 0, 0, 0, 0, 1, 2, 3, 6]

spec :: Spec
spec = do
  describe "Examples" examples
