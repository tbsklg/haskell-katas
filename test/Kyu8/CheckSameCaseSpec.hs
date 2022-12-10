module Kyu8.SameCaseSpec (spec) where

import Kyu8.CheckSameCase (sameCase)
import Test.Hspec

spec :: Spec
spec = do
  it "example tests" $ do
    sameCase 'C' 'B' `shouldBe` 1
    sameCase 'b' 'a' `shouldBe` 1
    sameCase 'd' 'd' `shouldBe` 1
    sameCase 'A' 's' `shouldBe` 0
    sameCase 'c' 'B' `shouldBe` 0
    sameCase 'b' 'Z' `shouldBe` 0
    sameCase '\t' 'Z' `shouldBe` -1
    sameCase 'H' ':' `shouldBe` -1
