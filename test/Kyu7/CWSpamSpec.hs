module Kyu7.CWSpamSpec where

import Kyu7.CWSpam (spam)
import Test.Hspec
import Test.QuickCheck

spec :: Spec
spec = do
  describe "CWSpam.spam" $ do
    it "Should work for various integers" $ do
      spam 0 `shouldBe` ""
      spam 1 `shouldBe` "hue"
      spam 6 `shouldBe` "huehuehuehuehuehue"
    it "Should work for larger integers" $ do
      spam 14 `shouldBe` "huehuehuehuehuehuehuehuehuehuehuehuehuehue"
      spam 50 `shouldBe` "huehuehuehuehuehuehuehuehuehuehuehuehuehuehuehuehuehuehuehuehuehuehuehuehuehuehuehuehuehuehuehuehuehuehuehuehuehuehuehuehuehuehuehuehuehuehuehuehuehue"
    it "Should return a string with the correct length" $ do
      property $ \x -> x >= 0 ==> length (spam x) `shouldBe` x * 3
    it "Should return the empty string on negative values" $ do
      property $ \x -> x < 0 ==> spam x `shouldBe` ""
