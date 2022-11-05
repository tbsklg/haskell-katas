module Kyu7.SpecialSpec where

-- Tests can be written using Hspec http://hspec.github.io/
-- Replace this with your own tests.

import Kyu7.Special
import Test.Hspec

-- `spec` of type `Spec` must exist
spec :: Spec
spec = do
  describe "checks for special numbers" $ do
    it "on fixed cases" $ do
      specialNumber 2 `shouldBe` "Special!!"
      specialNumber 3 `shouldBe` "Special!!"
      specialNumber 6 `shouldBe` "NOT!!"
      specialNumber 9 `shouldBe` "NOT!!"
      specialNumber 11 `shouldBe` "Special!!"
      specialNumber 55 `shouldBe` "Special!!"
      specialNumber 26 `shouldBe` "NOT!!"
      specialNumber 92 `shouldBe` "NOT!!"
      specialNumber 25432 `shouldBe` "Special!!"
      specialNumber 2783 `shouldBe` "NOT!!"

-- the following line is optional for 8.2
main = hspec spec
