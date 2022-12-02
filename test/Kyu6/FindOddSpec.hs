module Kyu6.FindOddSpec where

import Data.Foldable (for_)
import Data.List (permutations)
import Kyu6.FindOdd (findOdd)
import Test.Hspec
import Test.Hspec.QuickCheck
import Test.QuickCheck

spec :: Spec
spec = do
  describe "findUnique" $ do
    prop "works for singleton lists" $ \x ->
      findOdd [x] `shouldBe` x

    prop "works for lists with three elements" $ \x y ->
      x /= y ==> do
        findOdd [x, y, y] `shouldBe` x
        findOdd [y, x, y] `shouldBe` x
        findOdd [y, y, x] `shouldBe` x

    prop "works for lists with five elements" $ \x y ->
      x /= y
        ==> let perms = permutations [x, x, x, y, y]
             in for_ perms $ \xs -> findOdd xs `shouldBe` x
