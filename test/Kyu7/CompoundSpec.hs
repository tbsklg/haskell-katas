module Kyu7.CompoundSpec (spec) where

import Data.List ((\\))
import Kyu7.Compound (compoundArray)
import Test.Hspec
import Test.QuickCheck

main = hspec spec

spec = describe "compoundArray" $ do
  it "works for some simple tests" $ do
    compoundArray [1, 3 .. 10] [2, 4 .. 10] `shouldBe` [1 .. 10]
    compoundArray [11, 12] [21, 22, 23, 24] `shouldBe` [11, 21, 12, 22, 23, 24]
    compoundArray [2147483647, 2147483646, 2147483645, 2147483644, 2147483643] [9] `shouldBe` [2147483647, 9, 2147483646, 2147483645, 2147483644, 2147483643]

  it "works if one of the lists is empty" $
    property $ \xs -> do
      compoundArray xs [] `shouldBe` (xs :: [Int])
      compoundArray [] xs `shouldBe` (xs :: [Int])

  it "returns a list with all elements" $
    property $ \xs ys ->
      let prop :: [Double] -> Bool
          prop ks = ks \\ ys == xs && ks \\ xs == ys
       in compoundArray xs ys `shouldSatisfy` prop
