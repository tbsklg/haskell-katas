module Kyu7.MinimumPerimeterSpec where

import Kyu7.MinimumPerimeter
import Test.Hspec
import Test.QuickCheck

spec :: Spec
spec = do
  it "Basic tests" $ do
    minimumPerimeter 45 `shouldBe` 28
    minimumPerimeter 30 `shouldBe` 22
    minimumPerimeter 81 `shouldBe` 36
    minimumPerimeter 89 `shouldBe` 180
