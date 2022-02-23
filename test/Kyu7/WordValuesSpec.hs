module Kyu7.WordValuesSpec where

import Kyu7.WordValues 
import Test.Hspec
import Test.QuickCheck

spec :: Spec
spec = do
  describe "Word Values" $ do
    it "should work for simple examples" $ do
      wordValue ["codewars","abc","xyz"] `shouldBe` [88,12,225]  
      wordValue ["abc abc","abc abc","abc","abc"] `shouldBe` [12,24,18,24]
