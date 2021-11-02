module Kyu7.NumberRectSpec where

import Kyu7.NumberRect (numberOfRectangles)
import Test.Hspec
import Test.QuickCheck

examples = do
  it "should work for basic examples" $ do
    numberOfRectangles 1 1 `shouldBe` 1
    numberOfRectangles 1 2 `shouldBe` 3
    numberOfRectangles 2 2 `shouldBe` 9
    numberOfRectangles 3 2 `shouldBe` 18
    numberOfRectangles 4 4 `shouldBe` 100
    numberOfRectangles 5 5 `shouldBe` 225

spec :: Spec
spec = do
  describe "Sample Tests" examples