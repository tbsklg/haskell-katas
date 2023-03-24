module Kyu6.OddHeavyArraySpec where

import Kyu6.OddHeavyArray
import Test.Hspec

spec :: Spec
spec = do
   describe "Is Odd-Heavy" $ do
    it "Basic tests" $ do
      isOddHeavy [0,2,19,4,4] `shouldBe` True
      isOddHeavy [1,-2,-1,2] `shouldBe` False
      isOddHeavy [-3,2,1,3,-1,-2] `shouldBe` True 
      isOddHeavy [-1,1,-2,2,-2,-2,-4,4] `shouldBe` False 

