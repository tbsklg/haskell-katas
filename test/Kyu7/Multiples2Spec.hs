module Kyu7.Multiples2Spec where

import Kyu7.Multiples2
import Test.Hspec

spec :: Spec
spec = do
  it "Fixed Cases for small values of k" $ do
    findLowestInt 325 `shouldBe` 477
    findLowestInt 599 `shouldBe` 2394
    findLowestInt 855 `shouldBe` 999
  it "Edge Cases" $ do
    findLowestInt 1 `shouldBe` 125874
    findLowestInt 100 `shouldBe` 8919
    findLowestInt 1000 `shouldBe` 89919
    findLowestInt 10000 `shouldBe` 899919
