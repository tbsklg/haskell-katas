module Kyu7.ProductSpec where

-- Tests can be written using Hspec http://hspec.github.io/
-- Replace this with your own tests.

import Kyu7.Product
import Test.Hspec

-- `spec` of type `Spec` must exist
spec :: Spec
spec = do
  describe "gets a product array" $ do
    it "a few fixed tests " $ do
      productArray [12, 20] `shouldBe` [20, 12]
      productArray [12, 20] `shouldBe` [20, 12]
      productArray [3, 27, 4, 2] `shouldBe` [216, 24, 162, 324]
      productArray [13, 10, 5, 2, 9] `shouldBe` [900, 1170, 2340, 5850, 1300]
      productArray [16, 17, 4, 3, 5, 2] `shouldBe` [2040, 1920, 8160, 10880, 6528, 16320]

-- the following line is optional for 8.2
main = hspec spec
