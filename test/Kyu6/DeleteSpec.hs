module Kyu6.DeleteSpec where

import Test.Hspec
import Kyu6.Delete

spec :: Spec
spec = do
  it "finds the maximum number" $ do
    deleteDigit 152   `shouldBe` 52
    deleteDigit 1001  `shouldBe` 101
    deleteDigit 10    `shouldBe` 1
    deleteDigit 50782 `shouldBe` 5782
    deleteDigit 99234 `shouldBe` 9934
    deleteDigit 19999 `shouldBe` 9999
    deleteDigit 99999 `shouldBe` 9999
