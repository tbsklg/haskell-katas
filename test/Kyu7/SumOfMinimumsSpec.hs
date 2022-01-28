module Kyu7.SumOfMinimumsSpec (spec) where

import Kyu7.SumOfMinimums (sumOfMinimums)
import Test.Hspec

spec :: Spec
spec = do
  it "example tests" $ do
    sumOfMinimums [ [ 1, 2, 3, 4, 5 ]
                  , [ 5, 6, 7, 8, 9 ]
                  , [ 20, 21, 34, 56, 100 ]
                  ] `shouldBe` 26
    sumOfMinimums [ [ 7, 9, 8, 6, 2 ]
                  , [ 6, 3, 5, 4, 3 ]
                  , [ 5, 8, 7, 4, 5 ]
                  ] `shouldBe` 9
    sumOfMinimums [ [ 11, 12, 14, 54 ]
                  , [ 67, 89, 90, 56 ]
                  , [ 7, 9, 4, 3 ]
                  , [ 9, 8, 6, 7 ]
                  ] `shouldBe` 76
