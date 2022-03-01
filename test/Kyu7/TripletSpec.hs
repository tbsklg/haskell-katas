module Kyu7.TripletSpec where

import Test.Hspec
import Kyu7.Triplet

spec :: Spec
spec = do
    describe "find the max triplet sum" $ do
        it "works on fixed cases" $ do
          maxTriSum [3,2,6,8,2,3] `shouldBe` 17
          maxTriSum [2,9,13,10,5,2,9,5] `shouldBe` 32
          maxTriSum [2,1,8,0,6,4,8,6,2,4] `shouldBe` 18
          maxTriSum [-3,-27,-4,-2,-27,-2] `shouldBe` -9
          maxTriSum [-14,-12,-7,-42,-809,-14,-12] `shouldBe` -33
          maxTriSum [-13,-50,57,13,67,-13,57,108,67] `shouldBe` 232
          maxTriSum [-7,12,-7,29,-5,0,-7,0,0,29] `shouldBe` 41
          maxTriSum [-2,0,2] `shouldBe` 0
          maxTriSum [-2,-4,0,-9,2] `shouldBe` 0
          maxTriSum [-5,-1,-9,0,2] `shouldBe` 1
