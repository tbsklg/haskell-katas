module Kyu7.SquaresSpec where

import Kyu7.Squares (differenceOfSquares)
import Test.Hspec

spec :: Spec
spec = do
  describe "differenceOfSquares" $ do
    it "works for some examples" $ do
      differenceOfSquares 1 `shouldBe` 0
      differenceOfSquares 5 `shouldBe` 170
      differenceOfSquares 10 `shouldBe` 2640
      differenceOfSquares 15 `shouldBe` 13160
      differenceOfSquares 35 `shouldBe` 381990
      differenceOfSquares 64 `shouldBe` 4236960
      differenceOfSquares 100 `shouldBe` 25164150
