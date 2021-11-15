module Kyu7.UniqueSpec (spec, main) where

import Kyu7.Unique (hasUniqueChar)
import Test.Hspec
import Test.QuickCheck

main = hspec spec
spec = do
  describe "hasUniqueChar" $ do
    it "returns the correct result on some examples" $ do
      hasUniqueChar "  nAa" `shouldBe` False
      hasUniqueChar "abcde" `shouldBe` True
      hasUniqueChar "++-"   `shouldBe` False
      hasUniqueChar "AaBbC" `shouldBe` True
      hasUniqueChar "aba"   `shouldBe` False
    
    it "returns True on strings with no recurring characters" $ property $
      forAll (sublistOf $ ['\NUL' ..'\DEL']) $ \str ->
        hasUniqueChar str `shouldBe` True
    
    it "returns False on strings with recurring characters" $ property $
      \(Positive n) x -> hasUniqueChar (replicate (1 + n) x) `shouldBe` False