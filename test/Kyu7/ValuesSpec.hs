module Kyu7.ValuesSpec where

import Kyu7.Values
import Test.Hspec

spec :: Spec
spec = do
  it "finds x * x * y" $ do
    missingValues [1, 1, 1, 2, 2, 3] `shouldBe` 18
    missingValues [96, 56, 24, 46, 75, 46, 75, 21, 46, 21, 75, 96, 56, 96, 56] `shouldBe` 12096
    missingValues [27, 65, 44, 39, 44, 21, 21, 44, 65, 39, 21, 65] `shouldBe` 28431
    missingValues [66, 4, 80, 66, 4, 83, 97, 81, 19, 4, 80, 51, 83, 81, 83, 66, 51, 80, 97, 81, 97] `shouldBe` 18411
    missingValues [60, 76, 86, 76, 86, 53, 60, 88, 71, 71, 71, 86, 88, 76, 88, 17, 60, 26, 17, 17, 26, 53, 98, 53] `shouldBe` 249704
    missingValues [42, 23, 45, 33, 33, 19, 42, 79, 79, 23, 95, 95, 79, 19, 42, 33, 19, 23] `shouldBe` 192375
    missingValues [4, 74, 41, 41, 41, 88, 63, 35, 35, 4, 88, 13, 63, 74, 63, 88, 4, 74] `shouldBe` 5915
