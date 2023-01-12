module Kyu6.RemoveTheParenthesesSpec (spec) where

import Kyu6.RemoveTheParentheses (removeParentheses)
import Test.Hspec

spec :: Spec
spec = do
  it "example tests" $ do
    removeParentheses "example(unwanted thing)example" `shouldBe` "exampleexample"
    removeParentheses "example (unwanted thing) example" `shouldBe` "example  example"
    removeParentheses "a (bc d)e" `shouldBe` "a e"
    removeParentheses "a(b(c))" `shouldBe` "a"
    removeParentheses "hello example (words(more words) here) something" `shouldBe` "hello example  something"
    removeParentheses "(first group) (second group) (third group)" `shouldBe` "  "
