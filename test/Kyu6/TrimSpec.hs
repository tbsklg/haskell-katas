module Kyu6.TrimSpec where

import Kyu6.Trim (trim)
import Test.Hspec

spec :: Spec
spec = do
  describe "trim the string" $ do
    it "should remove trailing whitespaces" $ do
      trim "test " `shouldBe` "test"
      trim "foo      " `shouldBe` "foo"
      trim "bar\n" `shouldBe` "bar"
      trim "baz\t" `shouldBe` "baz"
      trim "codewars  \t\n  \r\n " `shouldBe` "codewars"

    it "should remove leading whitespaces" $ do
      trim " test" `shouldBe` "test"
      trim "      foo" `shouldBe` "foo"
      trim "\nbar" `shouldBe` "bar"
      trim "\tbaz" `shouldBe` "baz"
      trim " \t\n  \r\n codewars" `shouldBe` "codewars"

    it "should remove leading and trailing whitespaces" $ do
      trim " test " `shouldBe` "test"
      trim "      foo      " `shouldBe` "foo"
      trim "\nbar\n" `shouldBe` "bar"
      trim "\tbaz\t" `shouldBe` "baz"
      trim " \t\n  \r\n codewars  \r\n  \t \n " `shouldBe` "codewars"

    it "should not remove whitespaces in between" $ do
      trim "foo bar" `shouldBe` "foo bar"
      trim "foo    bar" `shouldBe` "foo    bar"
      trim "foo\nbar" `shouldBe` "foo\nbar"
      trim "foo\tbar" `shouldBe` "foo\tbar"
      trim "foo \t\n  \r\n bar" `shouldBe` "foo \t\n  \r\n bar"

    it "should remove everything from a string, containing only whitespaces" $ do
      trim " " `shouldBe` ""
      trim " \n  \t  \r   " `shouldBe` ""
