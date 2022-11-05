module Kyu7.SevenAte9Spec where

import Data.List
import Kyu7.SevenAte9 (sevenAte9)
import Test.Hspec
import Test.QuickCheck

spec :: Spec
spec = do
  describe "sevenAte9" $ do
    it "should work on empty strings" $ sevenAte9 "" `shouldBe` ""
    it "should not change the string if there is no '9'" $
      property $
        forAll (listOf $ elements "123456780") $ \str ->
          sevenAte9 str `shouldBe` str

    it "should not change the string if there is no '7'" $
      property $
        forAll (listOf $ elements "123456890") $ \str ->
          sevenAte9 str `shouldBe` str

    it "should remove all nines on repitions of 7979..." $
      property $
        forAll (choose (0, 100)) $ \k ->
          let sevenNine = '7' : take (2 * k) (cycle "97")
           in sevenAte9 sevenNine `shouldBe` replicate (k + 1) '7'

    it "should remove all occurences of \"797\" throughout the string" $
      property $
        forAll (listOf $ choose ('0', '9')) $ \str ->
          sevenAte9 str `shouldSatisfy` not . isInfixOf "797"
