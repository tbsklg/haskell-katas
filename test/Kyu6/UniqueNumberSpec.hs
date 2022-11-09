module Kyu6.UniqueNumberSpec where

import Kyu6.UniqueNumber (getUnique)
import Test.Hspec

spec :: Spec
spec = do
    describe "getUnique" $ do
      it "should work for some examples" $ do
        getUnique [1, 2, 2, 2] `shouldBe` 1
        getUnique [-2, 2, 2, 2] `shouldBe` -2
        getUnique [11, 11, 14, 11, 11] `shouldBe` 14
