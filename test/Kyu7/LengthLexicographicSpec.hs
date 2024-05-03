module Kyu7.LengthLexicographicSpec where

import Data.List
import Kyu7.LengthLexicographic
import Test.Hspec
import Text.Printf

spec :: Spec
spec = do
  describe "examples"
    $ do
      it (printf "Should return the right comparison results.")
    $ do
      (compare x y) `shouldBe` GT
      (compare y x) `shouldBe` LT
      (compare x z) `shouldBe` LT
      (compare z x) `shouldBe` GT
      (compare y z) `shouldBe` LT
      (compare z y) `shouldBe` GT
      (compare x x) `shouldBe` EQ
      (compare y y) `shouldBe` EQ
      (compare z z) `shouldBe` EQ
  describe "Sorting list of strings"
    $ do
      it (printf "should return %s given %s as input" (show stringsExpected) (show strings))
    $ do
      (sort strings) `shouldBe` stringsExpected
  where
    x = LengthList [1, 2, 3, 4, 5]
    y = LengthList [1, 2, 3, 4]
    z = LengthList [1, 2, 3, 4, 6]
    strings = [LengthList "BORAL", LengthList "BORAS", LengthList "HEBE", LengthList "HECH", LengthList "BORED", LengthList "HEAD", LengthList "HEAL", LengthList "BORAX", LengthList "HEAR", LengthList "HEAT", LengthList "HEAP", LengthList "BORER", LengthList "HECK"]
    stringsExpected = [LengthList "HEAD", LengthList "HEAL", LengthList "HEAP", LengthList "HEAR", LengthList "HEAT", LengthList "HEBE", LengthList "HECH", LengthList "HECK", LengthList "BORAL", LengthList "BORAS", LengthList "BORAX", LengthList "BORED", LengthList "BORER"]
