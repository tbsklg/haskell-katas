module Kyu7.DativeSpec where

import Test.Hspec
import Kyu7.Dative

spec = do
  describe "Example Tests" $
    it "should work with example tests" $ do
      dative "ablak"   `shouldBe` "ablaknak"
      dative "tükör"   `shouldBe` "tükörnek"
      dative "keret"   `shouldBe` "keretnek"
      dative "otthon"  `shouldBe` "otthonnak"
      dative "virág"   `shouldBe` "virágnak"
      dative "tett"    `shouldBe` "tettnek"
      dative "rokkant" `shouldBe` "rokkantnak"
      dative "rossz"   `shouldBe` "rossznak"
