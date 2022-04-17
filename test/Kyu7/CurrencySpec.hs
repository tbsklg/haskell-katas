module Kyu7.CurrencySpec (spec) where

import Kyu7.Currency (toCurrency)
import Test.Hspec
import Test.QuickCheck
import Data.Char

main = hspec spec
spec = do
  describe "toCurrency" $ do
    it "should work for some examples" $ do      
      toCurrency          0 `shouldBe`             "0"
      toCurrency        123 `shouldBe`           "123"
      toCurrency       1234 `shouldBe`         "1,234"
      toCurrency      12345 `shouldBe`        "12,345"
      toCurrency     123456 `shouldBe`       "123,456"
      toCurrency    1234567 `shouldBe`     "1,234,567"
      toCurrency 1234567890 `shouldBe` "1,234,567,890"
    
    it "should contain only digits or ','" $ property $ \(Positive x) ->
      toCurrency x `shouldSatisfy` all (\x -> isDigit x || x == ',')
    
    it "should contain the correct amount of ','" $ property $ \(Positive x) ->
      let expected = length (show x) `quot` 3
      in toCurrency x `shouldSatisfy` (expected ==) . length . filter (==',')
