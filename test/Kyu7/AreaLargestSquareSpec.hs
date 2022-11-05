module Kyu7.AreaLargestSquareSpec where

import Kyu7.AreaLargestSquare (areaLargestSquare)
import Test.Hspec

spec :: Spec
spec = do
  describe "Example Tests" $
    it "should work with example tests" $ do
      areaLargestSquare 5 `shouldBe` 50
      areaLargestSquare 7 `shouldBe` 98
      areaLargestSquare 50 `shouldBe` 5000
