module Kyu6.RomanNumeralsSpec where

import Kyu6.RomanNumerals (solution)
import Test.Hspec

spec :: Spec
spec = do
  describe "Some tests" $ do
    it "should translate 1 to I" $ solution 1 `shouldBe` "I"
    it "should translate 4 to IV" $ solution 4 `shouldBe` "IV"
    it "should translate 6 to VI" $ solution 6 `shouldBe` "VI"
    it "should translate 14 to XIV" $ solution 14 `shouldBe` "XIV"
    it "should translate 21 to XXI" $ solution 21 `shouldBe` "XXI"
    it "should translate 89 to LXXXIX" $ solution 89 `shouldBe` "LXXXIX"
    it "should translate 91 to XCI" $ solution 91 `shouldBe` "XCI"
    it "should translate 984 to CMLXXXIV" $ solution 984 `shouldBe` "CMLXXXIV"
    it "should translate 1000 to M" $ solution 1889 `shouldBe` "MDCCCLXXXIX"
    it "should translate 1889 to MDCCCLXXXIX" $ solution 1889 `shouldBe` "MDCCCLXXXIX"
    it "should translate 1989 to MCMLXXXIX" $ solution 1989 `shouldBe` "MCMLXXXIX"
