module Kyu7.MaxSumBetweenTwoNegativesSpec (spec) where

import Kyu7.MaxSumBetweenTwoNegatives (maxSumBetweenTwoNegatives)
import Test.Hspec

spec :: Spec
spec = do
  it "example tests" $ do
    maxSumBetweenTwoNegatives [-1,6,-2,3,5,-7] `shouldBe` Just 8
    maxSumBetweenTwoNegatives [5,-1,-2] `shouldBe` Just 0
    maxSumBetweenTwoNegatives [1,-2] `shouldBe` Nothing
