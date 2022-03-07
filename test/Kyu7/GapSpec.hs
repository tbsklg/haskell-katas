module Kyu7.GapSpec where

import Test.Hspec
import Kyu7.Gap

spec :: Spec
spec = do
    describe "finds the max gap" $ do
        it "handles fixed cases " $ do
          maxGap [13,10,2,9,5] `shouldBe` 4
          maxGap [13,3,5] `shouldBe` 8
          maxGap [24,299,131,14,26,25] `shouldBe` 168
          maxGap [-3,-27,-4,-2] `shouldBe` 23
          maxGap [-7,-42,-809,-14,-12] `shouldBe` 767
          maxGap [12,-5,-7,0,290] `shouldBe` 278
          maxGap [-54,37,0,64,-15,640,0] `shouldBe` 576
          maxGap [130,30,50] `shouldBe` 80
          maxGap [1,1,1] `shouldBe` 0
          maxGap [-1,-1,-1] `shouldBe` 0
