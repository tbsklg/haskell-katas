module Kyu7.TermSpec where

import Kyu7.Term
import Test.Hspec

spec :: Spec
spec = do
  describe "nthterm" $ do 
    it "first = 0, n = 55, c = 1" $ do
      nthterm 0 55 1 `shouldBe` 55
      
    it "first = 0, n = 100, c = 5" $ do
      nthterm 0 100 5 `shouldBe` 500
      
    it "first = 14, n = 4, c = 7" $ do   
      nthterm 14 4 7 `shouldBe` 42
      
    it "first = 10000, n = 99, c = -50" $ do
      nthterm 10000 99 (-50) `shouldBe` 5050
      
    it "first = 10000, n = 110, c = -50" $ do
      nthterm 10000 110 (-50) `shouldBe` 4500
   
    it "first = 0, n = 99, c = 1" $ do
      nthterm 0 99 1 `shouldBe` 99
