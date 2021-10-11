module Kyu7.BinaryTreeSearchSpec (spec) where

import Kyu7.BinaryTreeSearch (search, Tree(..))
import Test.Hspec
import Test.QuickCheck

main = hspec spec
spec = do
  describe "The search function" $ do
    it "should work for some examples" $ do
      search 1 Nil `shouldBe` False
      search 2 (Node Nil 2 Nil) `shouldBe` True
      search 2 (Node Nil 1 Nil) `shouldBe` False
