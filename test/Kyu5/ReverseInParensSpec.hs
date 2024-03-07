module Kyu5.ReverseInParensSpec (spec) where

import Kyu5.ReverseInParens (reverseInParens)
import Test.Hspec

spec :: Spec
spec = do
  it "example tests" $ do
    reverseInParens "h(el)lo" `shouldBe` "h(le)lo"
    reverseInParens "a ((d e) c b)" `shouldBe` "a (b c (d e))"
    reverseInParens "one (two (three) four)" `shouldBe` "one (ruof (three) owt)"
    reverseInParens "one (ruof ((rht)ee) owt)" `shouldBe` "one (two ((thr)ee) four)"
