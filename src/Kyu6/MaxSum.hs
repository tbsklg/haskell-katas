module Kyu6.MaxSum (maxSum, TreeNode (..)) where

data TreeNode = Node TreeNode Int TreeNode | Leaf Int | None

maxSum :: TreeNode -> Int
maxSum None = 0
maxSum (Leaf x) = x
maxSum (Node l x r) = x + maximum [maxSum l, maxSum r]
