module Kyu5.FibSpec where

import Kyu5.Fib (productFib)
import Test.Hspec

spec :: Spec
spec = do
  describe "productFib" $ do
    it "should work for some examples" $ do
      productFib 4895 `shouldBe` (55, 89, True)
      productFib 5895 `shouldBe` (89, 144, False)
      productFib 1 `shouldBe` (1, 1, True)
