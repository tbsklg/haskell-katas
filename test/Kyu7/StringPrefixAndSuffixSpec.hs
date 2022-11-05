module Kyu7.StringPrefixAndSuffixSpec (spec) where

import Kyu7.StringPrefixAndSuffix (solve)
import Test.Hspec

spec :: Spec
spec = do
  it "example tests" $ do
    solve "abcd" `shouldBe` 0
    solve "abcda" `shouldBe` 1
    solve "abcdabc" `shouldBe` 3
    solve "abcabc" `shouldBe` 3
    solve "abcabca" `shouldBe` 1
    solve "aaaa" `shouldBe` 2
    solve "aa" `shouldBe` 1
    solve "a" `shouldBe` 0
