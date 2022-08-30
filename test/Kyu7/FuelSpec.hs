module Kyu7.FuelSpec where

import Test.Hspec
import Kyu7.Fuel

spec :: Spec
spec = do
  it "fixed cases" $ do
    mpg_lp100km 42 `shouldBe` 5.6
    lp100km_mpg 9 `shouldBe` 26.13

-- the following line is optional for 8.2
main = hspec spec
