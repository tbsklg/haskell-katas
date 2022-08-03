module Kyu7.PalindromesSpec where

import Kyu7.Palindromes (nextPal)
import Test.Hspec
import Test.QuickCheck

spec :: Spec
spec = do
  describe "nextPal" $ do
    it "works for some examples" $ do
      nextPal 11 `shouldBe` 22
      nextPal 188 `shouldBe` 191
      nextPal 191 `shouldBe` 202
      nextPal 2541 `shouldBe` 2552
    
    it "returns a number higher than the input" $ property $
      forAll (choose (100, 10000)) $ \n ->
        nextPal n `shouldSatisfy` (> n)
