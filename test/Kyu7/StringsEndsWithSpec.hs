module Kyu7.StringsEndsWithSpec (spec) where

import Kyu7.StringsEndsWith (solution)
import Test.Hspec

spec :: Spec
spec = do
  it "example tests" $ do
    solution "abcde" "cde" `shouldBe` True
    solution "abcde" "abc" `shouldBe` False
    solution "abcde" "" `shouldBe` True
