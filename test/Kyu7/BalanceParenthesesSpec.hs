module Kyu7.BalanceParenthesesSpec (spec) where

import Kyu7.BalanceParentheses (fixParens)
import Test.Hspec

spec :: Spec
spec = do
  it "example tests" $ do
    fixParens ")(" `shouldBe` "()()"
    fixParens "))))(()(" `shouldBe` "(((())))(()())"