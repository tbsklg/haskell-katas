module Kyu7.FoldSpec where

import Data.Maybe (isJust, isNothing)
import Kyu7.Fold (foldTo)
import Test.Hspec
import Test.QuickCheck

spec :: Spec
spec = do
  describe "foldTo" $ do
    it "textbook example" $ foldTo (384000000) `shouldBe` Just 42
    it "no folds are needed" $ foldTo (0.0000001) `shouldBe` Just 0
    it "0" $ foldTo 0 `shouldBe` Just 0
    it "-1" $ foldTo (-1) `shouldBe` Nothing
