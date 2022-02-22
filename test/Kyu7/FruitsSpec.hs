module Kyu7.FruitsSpec where

import Kyu7.Fruits (removeRotten)
import Test.Hspec
import Test.QuickCheck

spec :: Spec
spec = do
  describe "removeRotten" $ do
    it "returns [] on []" $ 
      removeRotten [] `shouldBe` []
    
    it "returns the list of no fruit is rotten" $ 
      removeRotten ["banana", "apple", "tomato"] `shouldBe` ["banana", "apple", "tomato"]