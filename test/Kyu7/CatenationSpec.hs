module Kyu7.CatenationSpec (spec) where

import Kyu7.Catenation (charConcat)
import Test.Hspec
import Test.QuickCheck

main = hspec spec

spec = do
  describe "charConcat" $ do
    it "should work for some small examples" $ do
      charConcat "" `shouldBe` ""
      charConcat "a" `shouldBe` ""
      charConcat "ab" `shouldBe` "ab1"
      charConcat "abc" `shouldBe` "ac1"
      charConcat "abcd" `shouldBe` "ad1bc2"
      charConcat "abcde" `shouldBe` "ae1bd2"
      charConcat "abcdef" `shouldBe` "af1be2cd3"

    it "should have the correct length for short strings (a multiple of three)" $ do
      property $
        forAll (fmap (take 19) arbitrary) $ \xs ->
          length (charConcat xs) `shouldSatisfy` ((0 ==) . flip mod 3)

    it "should work for short symmetric random strings" $ do
      let predicate [] = True
          predicate (x : y : _ : xs) = if x /= y then False else predicate xs
          predicate _ = False
      property $
        forAll (fmap (\i -> i ++ reverse i) . fmap (take 8) $ arbitrary) $ \str ->
          charConcat str `shouldSatisfy` predicate
