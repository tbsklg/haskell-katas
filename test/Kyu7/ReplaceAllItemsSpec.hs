module Kyu7.ReplaceAllItemsSpec where

import Kyu7.ReplaceAllItems
import Test.Hspec
import Test.QuickCheck

spec :: Spec
spec = do
  describe "The replaceAll function" $ do
    it "should work for some examples" $ do
      replaceAll [] 1 2 `shouldBe` []
      replaceAll [1, 2, 2] 1 2 `shouldBe` [2, 2, 2]
