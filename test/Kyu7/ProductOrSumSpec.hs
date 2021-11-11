module Kyu7.ProductOrSumSpec (spec) where

import Kyu7.ProductOrSum (productOrSum, ProductOrSum(..))
import Test.Hspec

spec :: Spec
spec = do
  it "example tests" $ do
    productOrSum [10, 41, 8, 16, 20, 36, 9, 13, 20] 3 `shouldBe` Product
    productOrSum [1, 2, 3, 4, 5, 6, 7, 8, 9, 10] 4 `shouldBe` Sum
    productOrSum [10, 20, 3, 30, 5, 4] 3 `shouldBe` Same