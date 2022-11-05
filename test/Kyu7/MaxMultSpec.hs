module Kyu7.MaxMultSpec where

-- Tests can be written using Hspec http://hspec.github.io/
-- Replace this with your own tests.

import Kyu7.MaxMult
import Test.Hspec

-- `spec` of type `Spec` must exist
spec :: Spec
spec = do
  describe "finds the maximum multiple" $ do
    it "a few checks" $ do
      maxMultiple 2 7 `shouldBe` 6
      maxMultiple 3 10 `shouldBe` 9
      maxMultiple 7 17 `shouldBe` 14
      maxMultiple 10 50 `shouldBe` 50
      maxMultiple 37 200 `shouldBe` 185
      maxMultiple 7 100 `shouldBe` 98

-- the following line is optional for 8.2
main = hspec spec
