module Kyu7.DescribeListSpec where

import Kyu7.DescribeList
import Test.Hspec
import Test.QuickCheck

spec :: Spec
spec = do
  describe "The describeList function" $ do
    it "should work for some examples" $ do
      describeList [] `shouldBe` "empty"
      describeList [1] `shouldBe` "singleton"
      describeList [1, 2] `shouldBe` "longer"
      describeList [] `shouldBe` "empty"
      describeList [1.5] `shouldBe` "singleton"
      describeList [1.5, 2.5] `shouldBe` "longer"
