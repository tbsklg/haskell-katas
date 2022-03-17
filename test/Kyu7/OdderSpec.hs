module Kyu7.OdderSpec (spec) where

import Test.Hspec
import Kyu7.Odder (oddOne)

spec :: Spec
spec = do
  it "Should work with example test cases" $ do
    oddOne [2,4,6,7,10] `shouldBe` 3
    oddOne [2,16,98,10,13,78] `shouldBe` 4
  it "with negative numbers" $ do
    oddOne [4,-8,98,-12,-7,90,100] `shouldBe` 4
  it "should return -1 when there are no odd numbers" $ do
    oddOne [2,4,6,8] `shouldBe` -1