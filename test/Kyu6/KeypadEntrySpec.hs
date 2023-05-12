module Kyu6.KeypadEntrySpec where

import Kyu6.KeypadEntry (presses)
import Test.Hspec

spec :: Spec
spec = do
  describe "presses" $ do
    it "should work for simple examples" $ do
      presses "LOL" `shouldBe` 9
    it "should work for phrases with spaces" $ do
      presses "HOW R U" `shouldBe` 13
    it "should work for phrases with numbers" $ do
      presses "WHERE DO U WANT 2 MEET L8R" `shouldBe` 47
    it "should handle the zero digit" $ do
      presses "0" `shouldBe` 2
