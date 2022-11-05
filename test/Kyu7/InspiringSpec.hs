module Kyu7.InspiringSpec where

-- Tests can be written using Hspec http://hspec.github.io/
-- Replace this with your own tests.

import Kyu7.Inspiring
import Test.Hspec

-- `spec` of type `Spec` must exist
spec :: Spec
spec = do
  it "finds the longest word" $ do
    longestWord "a b c d each" `shouldBe` "each"
    longestWord "each step" `shouldBe` "step"
    longestWord "forward each step going" `shouldBe` "forward"
    longestWord "brings each step going" `shouldBe` "brings"
    longestWord "brings each opportunity step going" `shouldBe` "opportunity"

-- the following line is optional for 8.2

main = hspec spec
