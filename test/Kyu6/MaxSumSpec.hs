module Kyu6.MaxSumSpec where

import Kyu6.MaxSum
import Test.Hspec

tree1 = Node (Node (Leaf 9) (-22) (Leaf 50)) 5 (Node (Leaf 9) 11 (Leaf 2))

spec :: Spec
spec = do
  describe "solution_test" $ do
    it "max_sum_in_null_tree" $ do
      (maxSum None) `shouldBe` (0 :: Int)
    it "max_sum_in_perfect_tree" $ do
      (maxSum tree1) `shouldBe` (33 :: Int)
