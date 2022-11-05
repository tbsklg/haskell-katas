module Kyu7.FlatSortSpec where

-- Tests can be written using Hspec http://hspec.github.io/
-- Replace this with your own tests.

import Kyu7.FlatSort
import Test.Hspec

-- `spec` of type `Spec` must exist
spec :: Spec
spec = do
  describe "flattens and sorts" $ do
    it "some specs" $ do
      flatSort [] `shouldBe` []
      flatSort [[], []] `shouldBe` []
      flatSort [[], [1]] `shouldBe` [1]
      flatSort [[], [], [], [2], [], [1]] `shouldBe` [1, 2]

-- the following line is optional for 8.2
main = hspec spec
