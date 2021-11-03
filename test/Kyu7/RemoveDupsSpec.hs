module Kyu7.RemoveDupsSpec where

import Kyu7.RemoveDups
import Test.Hspec

spec = do
  describe "Another remove duplicates" $ do
    it "Basic tests" $ do
      solve [3,4,4,3,6,3] `shouldBe` [4,6,3]
      solve [1,2,1,2,1,2,3] `shouldBe` [1,2,3]
      solve [1,2,3,4] `shouldBe` [1,2,3,4]
      solve [1,1,4,5,1,2,1] `shouldBe` [4,5,2,1]