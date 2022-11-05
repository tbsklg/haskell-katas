module Kyu7.SimpleLetterRemovalSpec where

import Kyu7.SimpleLetterRemoval
import Test.Hspec

spec = do
  describe "Simple letter removal" $ do
    it "Basic tests" $ do
      solve "abracadabra" 0 `shouldBe` "abracadabra"
      solve "abracadabra" 1 `shouldBe` "bracadabra"
      solve "abracadabra" 2 `shouldBe` "brcadabra"
      solve "abracadabra" 6 `shouldBe` "rcdbr"
      solve "abracadabra" 8 `shouldBe` "rdr"
      solve "abracadabra" 50 `shouldBe` ""
      solve "u" 1 `shouldBe` ""
