module Kyu7.DisemvowelSpec where

import Kyu7.Disemvowel (disemvowel)
import Test.Hspec

spec :: Spec
spec = do
  it "should work for single words" $ do
    disemvowel "hat" `shouldBe` "ht"
    disemvowel "toast" `shouldBe` "tst"
  it "should work with spaces" $ do
    disemvowel "toast hat" `shouldBe` "tst ht"