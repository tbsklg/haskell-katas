module Kyu7.JadonCasingSpec where

import Kyu7.JadenCasing (toJadenCase)
import Test.Hspec

spec :: Spec
spec = do
  describe "toJadenCase" $ do
    it "should work for some examples" $ do
      toJadenCase  "The moment that truth is organized it becomes a lie."
        `shouldBe` "The Moment That Truth Is Organized It Becomes A Lie."
      toJadenCase  "Three men, six options, don't choose."
        `shouldBe` "Three Men, Six Options, Don't Choose."
