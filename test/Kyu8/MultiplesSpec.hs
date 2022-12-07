module Kyu8.MultiplesSpec (spec) where

import Kyu8.Multiples (multiples)
import Test.Hspec

spec :: Spec
spec = do
  it "example tests" $ do
    multiples 5 25 `shouldBe` [5, 10, 15, 20, 25]
    multiples 1 2 `shouldBe` [1, 2]
    multiples 5 7 `shouldBe` [5]
    multiples 4 27 `shouldBe` [4, 8, 12, 16, 20, 24]
    multiples 11 54 `shouldBe` [11, 22, 33, 44]
