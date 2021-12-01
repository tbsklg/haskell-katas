module Kyu7.FourSevenSpec (spec) where

import Kyu7.FourSeven (fourSeven)
import Test.Hspec

spec :: Spec
spec = do
  it "example tests" $ do
    fourSeven 4 `shouldBe` Just 7
    fourSeven 7 `shouldBe` Just 4
