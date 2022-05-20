module Kyu7.DescendingOrderSpec where

import Kyu7.DescendingOrder (descendingOrder)
import Test.Hspec

spec :: Spec
spec = do
  describe "descendingOrder" $ do
    it "should work on several examples" $ do
      descendingOrder 0         `shouldBe` 0
      descendingOrder 1         `shouldBe` 1
      descendingOrder 15        `shouldBe` 51
      descendingOrder 1021      `shouldBe` 2110
      descendingOrder 123456789 `shouldBe` 987654321
