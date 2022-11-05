module Kyu7.SumStringSpec where

import Kyu7.SumString (sumFromString)
import Test.Hspec
import Test.QuickCheck

spec :: Spec
spec = do
  describe "sumFromString" $ do
    let testSum str n = it ("returns the correct value for " ++ show str) $ sumFromString str `shouldBe` n

    testSum "" 0
    testSum "In 2015, how expensive is an i386?" 2401
    testSum "1+1=2" 4
    testSum "E=mc^2" 2

    it "returns the correct number on a string consisting only of numbers" $
      property $ \xs ->
        let s = sum . map abs $ xs
         in sumFromString (unwords . map show $ xs) `shouldBe` s
