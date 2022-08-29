module Kyu7.NewNumeralsSpec where

import Test.Hspec
import Kyu7.NewNumerals

spec :: Spec
spec = do
  it "handles fixed cases " $ do
    newNumeralSystem 'G' `shouldBe` ["A + G",  "B + F",  "C + E",  "D + D"]
    newNumeralSystem 'A' `shouldBe` ["A + A"]
    newNumeralSystem 'D' `shouldBe` ["A + D",  "B + C"]
    newNumeralSystem 'E' `shouldBe` ["A + E",  "B + D",  "C + C"]
    newNumeralSystem 'O' `shouldBe` ["A + O",  "B + N",  "C + M",  "D + L",  "E + K",  "F + J",  "G + I",  "H + H"]


-- the following line is optional for 8.2
main = hspec spec
