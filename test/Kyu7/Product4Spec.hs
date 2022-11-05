module Kyu7.Product4Spec where

import Kyu7.Product4 (mainDiagonalProduct)
import Test.Hspec
import Test.QuickCheck

spec :: Spec
spec = do
  describe "mainDiagonalProduct" $ do
    it "should work for some small examples" $ do
      mainDiagonalProduct [] `shouldBe` 1
      mainDiagonalProduct [[1]] `shouldBe` 1
      mainDiagonalProduct [[1, 2, 3], [4, 5, 6], [7, 8, 9]] `shouldBe` 1 * 5 * 9

    it "should work for random 1x1 matrices" $
      property $ \x -> mainDiagonalProduct [[x]] `shouldBe` (x :: Double)
