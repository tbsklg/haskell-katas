module Kyu5.ReverseInParensSpec (spec) where

import Kyu5.ReverseInParens (reverseInParens)
import Test.Hspec

spec :: Spec
spec = do
  it "example tests" $ do
    reverseInParens "hello" `shouldBe` "hello"
    reverseInParens "()" `shouldBe` "()"
    reverseInParens "h(el)lo" `shouldBe` "h(le)lo"
    reverseInParens "h(le)lo" `shouldBe` "h(el)lo"
    reverseInParens "h(lel)o" `shouldBe` "h(lel)o"
    reverseInParens "h(lel)o(uoy)" `shouldBe` "h(lel)o(you)"
    reverseInParens "h(x(el)l)o(uoy)" `shouldBe` "h(l(el)x)o(you)"
    reverseInParens "a ((d e) c b)" `shouldBe` "a (b c (d e))"
    reverseInParens "one (two (three) four)" `shouldBe` "one (ruof (three) owt)"
    reverseInParens "one (ruof ((rht)ee) owt)" `shouldBe` "one (two ((thr)ee) four)"
