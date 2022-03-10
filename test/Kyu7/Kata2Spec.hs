module Kyu7.Kata2Spec where

import Test.Hspec
import Kyu7.Kata2 (numbersWithDigitInside)

spec :: Spec
spec = do
  describe "Example Tests" $
    it "should work with example tests" $ do
      numbersWithDigitInside 5 6  `shouldBe` [0, 0, 0]
      numbersWithDigitInside 7 6  `shouldBe` [1, 6, 6]
      numbersWithDigitInside 11 1 `shouldBe` [3, 22, 110]
      numbersWithDigitInside 20 0 `shouldBe` [2, 30, 200]
      numbersWithDigitInside 44 4 `shouldBe` [9, 286, 5955146588160]
