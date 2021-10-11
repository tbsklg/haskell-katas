module Kyu7.RowSpec where

import Test.Hspec
import Kyu7.Row

spec :: Spec
spec = do
    describe "finds the even / odd sums" $ do
        it "fixed cases" $ do
          rowWeights [80] `shouldBe` [80,0]
          rowWeights [100,50] `shouldBe` [100,50]
          rowWeights [50,60,70,80] `shouldBe` [120,140]
          rowWeights [13,27,49] `shouldBe` [62,27]
          rowWeights [70,58,75,34,91] `shouldBe` [236,92]
          rowWeights [29,83,67,53,19,28,96] `shouldBe` [211,164]
          rowWeights [0] `shouldBe` [0,0]
          rowWeights [100,51,50,100] `shouldBe` [150,151]
          rowWeights [39,84,74,18,59,72,35,61] `shouldBe` [207,235]
          rowWeights [0,1,0] `shouldBe` [0,1]
