module Kyu6.BreakCamelCaseSpec (spec, main) where

import Data.Char (toUpper)
import Kyu6.BreakCamelCase (solution)
import Test.Hspec
import Test.QuickCheck

main = hspec spec

spec =
  describe "break camelCase" $ do
    it "should work for some small examples" $ do
      solution "HelloWorld" `shouldBe` "Hello World"
      solution "helloWorld" `shouldBe` "hello World"
      solution "camelCase" `shouldBe` "camel Case"
      solution "breakCamelCase" `shouldBe` "break Camel Case"
    it "should have the correct length for random words" $ do
      property $
        forAll (listOf1 $ (fmap (\(x : xs) -> toUpper x : xs)) $ listOf1 $ choose ('a', 'z')) $ \xs ->
          length (words . solution . concat $ xs) `shouldBe` length xs
