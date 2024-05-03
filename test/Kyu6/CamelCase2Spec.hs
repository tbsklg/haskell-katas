module Kyu6.CamelCase2Spec where

import Kyu6.CamelCase2
import Test.Hspec

spec = do
  describe "Basic tests" $ do
    it "test case" $ do
      (camelCase "test case") `shouldBe` "TestCase"
    it "camel case method" $ do
      (camelCase "camel case method") `shouldBe` "CamelCaseMethod"
    it "say hello" $ do
      (camelCase "say hello ") `shouldBe` "SayHello"
    it " camel case word" $ do
      (camelCase " camel case word") `shouldBe` "CamelCaseWord"
