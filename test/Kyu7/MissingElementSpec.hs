module Kyu7.MissingElementSpec where

import Data.List (delete)
import Kyu7.MissingElement (getMissingElement)
import Test.Hspec
import Test.QuickCheck

spec :: Spec
spec = do
  it "should work for [0, 5, 1, 3, 2, 9, 7, 6, 4]" $
    getMissingElement [0, 5, 1, 3, 2, 9, 7, 6, 4] `shouldBe` 8
  it "should work for [9, 2, 4, 5, 7, 0, 8, 6, 1]" $
    getMissingElement [9, 2, 4, 5, 7, 0, 8, 6, 1] `shouldBe` 3
  it "should return the correct number for [0..9]" $
    property $
      forAll (choose (0, 9)) $ \x ->
        getMissingElement (delete x [0 .. 9]) `shouldBe` x
