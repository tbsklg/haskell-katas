module Kyu7.SillyCASESpec where

import Kyu7.SillyCASE (sillyCASE)
import Test.Hspec
import Test.QuickCheck

spec :: Spec
spec = do
  describe "sillyCASE" $ do
    it "should work for some examples" $ do
      sillyCASE "foobar" `shouldBe` "fooBAR"
      sillyCASE "codewars" `shouldBe` "codeWARS"
      sillyCASE "brian" `shouldBe` "briAN"
      sillyCASE "sIlLyCaSE" `shouldBe` "sillyCASE"

    it "should be idempotent" $ do
      property $
        forAll (listOf $ elements $ ['a' .. 'z'] ++ ['A' .. 'Z']) $ \xs ->
          let x = sillyCASE xs
           in sillyCASE x `shouldBe` x
