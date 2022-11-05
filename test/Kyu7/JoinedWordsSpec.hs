module Kyu7.JoinedWordsSpec where

import Kyu7.JoinedWords
import Test.Hspec
import Test.QuickCheck

spec :: Spec
spec = do
  describe "Example tests" $ do
    it "Put your tests here" $ do
      joinS [] "blah blah bah" `shouldBe` ""
      joinS ["Richard", "P.", "Feynman"] " " `shouldBe` "Richard P. Feynman"
      joinS ["Black", "adder"] "" `shouldBe` "Blackadder"
      joinS ["12", "07", "98"] "/" `shouldBe` "12/07/98"
