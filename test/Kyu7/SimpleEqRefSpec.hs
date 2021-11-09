module Kyu7.SimpleEqRefSpec where

import Kyu7.SimpleEqRef

import Test.Hspec

spec :: Spec
spec = do
  describe "Simple equation reversal" $ do
    it "Basic tests" $ do      
      solve "100*b/y" `shouldBe` "y/b*100"
      solve "a+b-c/d*30" `shouldBe` "30*d/c-b+a"
      solve "a*b/c+50" `shouldBe` "50+c/b*a"
