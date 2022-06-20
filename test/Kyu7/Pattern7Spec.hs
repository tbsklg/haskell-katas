module Kyu7.Pattern7Spec (spec) where

import Kyu7.Pattern7 (pattern)
import Test.Hspec

spec :: Spec
spec = do
  it "example tests" $ do
    pattern 7 `shouldBe` "1234567\n2345671\n3456712\n4567123\n5671234\n6712345\n7123456\n"
    pattern 1 `shouldBe` "1\n"
    pattern 4 `shouldBe` "1234\n2341\n3412\n4123\n"
    pattern 0 `shouldBe` ""
    pattern (-25) `shouldBe` ""
