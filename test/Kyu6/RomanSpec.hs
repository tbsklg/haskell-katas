module Kyu6.RomanSpec (spec) where

import Kyu6.Roman
import Test.Hspec

spec :: Spec
spec =
  it "basic tests" $ do
    solution "XXI" `shouldBe` 21
    solution "I" `shouldBe` 1
    solution "IV" `shouldBe` 4
    solution "MMVIII" `shouldBe` 2008
    solution "MDCLXVI" `shouldBe` 1666

