module Kyu7.MinMaxSpec where

import Kyu7.MinMax
import Test.Hspec
import Test.QuickCheck

spec :: Spec
spec = do
  describe "The getMinMax function" $ do
    it "should work for some examples" $ do
      getMinMax [1] `shouldBe` (1,1)
      getMinMax [1,2] `shouldBe` (1,2)
      getMinMax [2,1] `shouldBe` (1,2)
