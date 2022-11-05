module Kyu7.ReverseListSpec where

import Kyu7.ReverseList
import Test.Hspec
import Test.QuickCheck

spec :: Spec
spec = do
  describe "The reverseList function" $ do
    it "should work for some examples" $ do
      reverseList [] `shouldBe` []
      reverseList [1, 2, 3] `shouldBe` [3, 2, 1]
