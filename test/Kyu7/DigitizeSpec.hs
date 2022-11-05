module Kyu7.DigitizeSpec where

import Kyu7.Digitize
import Test.Hspec

spec :: Spec
spec = do
  describe "digitize 123" $ do
    it "should be [1,2,3]" $ do
      digitize 123 `shouldBe` [1, 2, 3]
  describe "digitize 1" $ do
    it "should be [1]" $ do
      digitize 1 `shouldBe` [1]
  describe "digitize 0" $ do
    it "should be [0]" $ do
      digitize 0 `shouldBe` [0]
  describe "digitize 1230" $ do
    it "should be [1,2,3,0]" $ do
      digitize 1230 `shouldBe` [1, 2, 3, 0]
  describe "digitize 8675309" $ do
    it "should be [8,6,7,5,3,0,9]" $ do
      digitize 8675309 `shouldBe` [8, 6, 7, 5, 3, 0, 9]
