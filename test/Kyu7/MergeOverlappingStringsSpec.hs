module Kyu7.MergeOverlappingStringsSpec (spec) where

import Kyu7.MergeOverlappingStrings (merge)
import Test.Hspec

spec :: Spec
spec = do
  it "example tests" $ do
    merge "abcde" "cdefgh" `shouldBe` "abcdefgh"
    merge "abaab" "aabab" `shouldBe` "abaabab"
    merge "abc" "def" `shouldBe` "abcdef"
    merge "abc" "abc" `shouldBe` "abc"
