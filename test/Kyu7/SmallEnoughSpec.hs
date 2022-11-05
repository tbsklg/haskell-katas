module Kyu7.SmallEnoughSpec where

import Kyu7.SmallEnough
import Test.Hspec

spec :: Spec
spec = do
  describe "Example Tests" $
    it "should work with example tests" $ do
      smallEnough [66, 101] 200 `shouldBe` True
      smallEnough [78, 117, 110, 99, 104, 117, 107, 115] 100 `shouldBe` False
      smallEnough [101, 45, 75, 105, 99, 107] 107 `shouldBe` True
      smallEnough [80, 117, 115, 104, 45, 85, 112, 115] 120 `shouldBe` True
      smallEnough [1, 1, 1, 1, 1, 2] 1 `shouldBe` False
      smallEnough [78, 33, 22, 44, 88, 9, 6] 87 `shouldBe` False
      smallEnough [1, 2, 3, 4, 5, 6, 7, 8, 9] 10 `shouldBe` True
      smallEnough [12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12] 12 `shouldBe` True
