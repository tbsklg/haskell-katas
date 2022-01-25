module Kyu7.EvenSpec where

import Kyu7.Even
import Test.Hspec

spec :: Spec
spec = do
    describe "Even" $ do
        it "Basic tests" $ do
            getEvenNumbers[2,4,5,6] `shouldBe`[2,4,6]
            getEvenNumbers[] `shouldBe`[]
            getEvenNumbers[1] `shouldBe`[]
            getEvenNumbers[1,2] `shouldBe`[2]
            getEvenNumbers[1,2,3,4,5] `shouldBe`[2,4]
            getEvenNumbers[2,4,6,8] `shouldBe`[2,4,6,8]
