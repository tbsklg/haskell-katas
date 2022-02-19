module Kyu7.PairZerosSpec (spec) where

import Kyu7.PairZeros (pairZeros)
import Test.Hspec

spec :: Spec
spec = do
  it "description example tests" $ do
    pairZeros [0,1,0,2] `shouldBe` [0,1,2]
    pairZeros [0,1,0,0] `shouldBe` [0,1,0]
    pairZeros [1,0,7,0,1] `shouldBe` [1,0,7,1]
    pairZeros [0,1,7,0,2,2,0,0,1,0] `shouldBe` [0,1,7,2,2,0,1,0]
  it "more example tests" $ do
    pairZeros [1] `shouldBe` [1]
    pairZeros [0,0] `shouldBe` [0]
    pairZeros [0,0,0] `shouldBe` [0,0]
    pairZeros [1,0,1,0,2,0,0,3,0] `shouldBe` [1,0,1,2,0,3,0]
