module Kyu7.ConsecutiveItemsSpec (spec) where

import Kyu7.ConsecutiveItems (consecutive)
import Test.Hspec

spec :: Spec
spec = do
  it "example tests" $ do
    consecutive [1, 3, 5, 7] 3 7 `shouldBe` False
    consecutive [1, 3, 5, 7] 3 1 `shouldBe` True
    consecutive [1, 6, 9, -3, 4, -78, 0] (-3) 4 `shouldBe` True
