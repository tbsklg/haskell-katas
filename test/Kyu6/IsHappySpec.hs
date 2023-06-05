module Kyu6.IsHappySpec where

import Kyu6.IsHappy
import Test.Hspec
import Test.QuickCheck


spec :: Spec
spec = do
  describe "maxSequence" $ do
    it "Should work on n=1 " 
     $ do isHappy 1 `shouldBe` True
    it "Static 7" 
     $ do  isHappy 7 `shouldBe` True
    it "Static 16" 
     $ do  isHappy 16 `shouldBe` False

