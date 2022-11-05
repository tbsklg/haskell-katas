module Kyu7.SnailSpec where

import Kyu7.Snail
import Test.Hspec

-- `spec` of type `Spec` must exist
spec :: Spec
spec = do
  it "works on a few fixed cases" $ do
    snail 3 2 1 `shouldBe` 2
    snail 10 3 1 `shouldBe` 5
    snail 10 3 2 `shouldBe` 8
    snail 100 20 5 `shouldBe` 7
    snail 5 10 3 `shouldBe` 1
