module Kyu6.BaseConversionSpec (spec, main) where

import Kyu6.BaseConversion (Alphabet (..), convert)
import Test.Hspec
import Test.QuickCheck

bin, oct, dec, hex, alphaLower, alphaUpper, alpha, alphaNumeric :: Alphabet
bin = Alphabet $ "01"
oct = Alphabet $ ['0' .. '7']
dec = Alphabet $ ['0' .. '9']
hex = Alphabet $ ['0' .. '9'] ++ ['a' .. 'f']
alphaLower = Alphabet $ ['a' .. 'z']
alphaUpper = Alphabet $ ['A' .. 'Z']
alpha = Alphabet $ ['a' .. 'z'] ++ ['A' .. 'Z']
alphaNumeric = Alphabet $ ['0' .. '9'] ++ ['a' .. 'z'] ++ ['A' .. 'Z']

allAlphabets = [bin, oct, dec, hex, alphaLower, alphaUpper, alpha, alphaNumeric]

main = hspec spec
spec = do
  describe "convert" $ do
    it "should work on some simple examples" $ do
      convert dec bin "15" `shouldBe` "1111"
      convert dec oct "15" `shouldBe` "17"
      convert bin dec "1010" `shouldBe` "10"
      convert bin hex "1010" `shouldBe` "a"

      convert dec alpha "0" `shouldBe` "a"
      convert dec alphaLower "27" `shouldBe` "bb"
      convert alphaLower hex "hello" `shouldBe` "320048"
      convert bin bin "01110110001" `shouldBe` "01110110001"
      convert alphaLower alphaUpper "jehu" `shouldBe` "JEHU"
      convert bin hex "011" `shouldBe` "3"
      convert alphaUpper alphaNumeric "SDKJJQCYAOGKIMVEK" `shouldBe` "3X4gFQETSyxYsS"
