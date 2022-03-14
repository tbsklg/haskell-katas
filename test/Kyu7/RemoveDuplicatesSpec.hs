module Kyu7.RemoveDuplicatesSpec where

import Kyu7.RemoveDuplicates
import Test.Hspec
import Test.QuickCheck

spec :: Spec
spec = do
  describe "Testing the 'unique' function" $ do
    it "Should remove duplicate elements from an array of Integers" $
      unique [1, 2, 3, 4, 2, 5, 1, 3, 2, 3] `shouldBe` [1, 2, 3, 4, 5]
