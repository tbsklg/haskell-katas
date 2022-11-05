module Kyu7.LastDigitsOfANumberSpec (spec) where

import Kyu7.LastDigitsOfANumber (lastDigits)
import Test.Hspec

spec :: Spec
spec = do
  it "description example tests" $ do
    lastDigits 1 1 `shouldBe` [1]
    lastDigits 1234 2 `shouldBe` [3, 4]
    lastDigits 637547 6 `shouldBe` [6, 3, 7, 5, 4, 7]
  it "more example tests, d > 0" $ do
    lastDigits 123767 4 `shouldBe` [3, 7, 6, 7]
    lastDigits 0 1 `shouldBe` [0]
    lastDigits 34625647867585 10 `shouldBe` [5, 6, 4, 7, 8, 6, 7, 5, 8, 5]
  it "more example tests, d <= 0" $ do
    lastDigits 1234 0 `shouldBe` []
    lastDigits 24134 (-4) `shouldBe` []
  it "more example tests, d > number of digits in n" $ do
    lastDigits 1343 5 `shouldBe` [1, 3, 4, 3]
