module Kyu7.IsItWhitespaceSpec where

import Kyu7.IsItWhitespace
import Test.Hspec
import Test.QuickCheck

spec :: Spec
spec = do
  describe "The isItWhitespace function" $ do
    it "should work for some examples" $ do
      isItWhitespace ' ' `shouldBe` True
      isItWhitespace 'a' `shouldBe` False
