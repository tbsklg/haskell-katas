module Kyu6.SplitAndAddSpec (spec) where

import Kyu6.SplitAndAdd (splitAndAdd)
import Test.Hspec

spec :: Spec
spec = do
  it "example tests" $ do
    splitAndAdd [1, 2, 3, 4, 5] 2 `shouldBe` [5, 10]
    splitAndAdd [1, 2, 3, 4, 5] 3 `shouldBe` [15]
    splitAndAdd [15] 3 `shouldBe` [15]
    splitAndAdd [32, 45, 43, 23, 54, 23, 54, 34] 2 `shouldBe` [183, 125]
    splitAndAdd [32, 45, 43, 23, 54, 23, 54, 34] 0 `shouldBe` [32, 45, 43, 23, 54, 23, 54, 34]
    splitAndAdd [3, 234, 25, 345, 45, 34, 234, 235, 345] 3 `shouldBe` [305, 1195]
    splitAndAdd [3, 234, 25, 345, 45, 34, 234, 235, 345, 34, 534, 45, 645, 645, 645, 4656, 45, 3] 4 `shouldBe` [1040, 7712]
    splitAndAdd [23, 345, 345, 345, 34536, 567, 568, 6, 34536, 54, 7546, 456] 20 `shouldBe` [79327]
