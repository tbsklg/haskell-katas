module Kyu5.ParenthesesSpec where

import Kyu5.Parentheses (validParentheses)
import Test.Hspec (Spec, describe, it, shouldBe)

spec :: Spec
spec = do
  describe "validParentheses" $ do
    it "should work for some examples" $ do
      validParentheses "()" `shouldBe` True
      validParentheses ")(" `shouldBe` False
      validParentheses ")" `shouldBe` False
      validParentheses "(())((()())())" `shouldBe` True
