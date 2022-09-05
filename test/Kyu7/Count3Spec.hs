module Kyu7.Count3Spec where

import Test.Hspec
import Kyu7.Count3

spec :: Spec
spec = do
  it "handles a few fixed cases " $ do
    countNumber 5 5 `shouldBe` 2
    countNumber 10 5 `shouldBe` 2
    countNumber 6 12 `shouldBe` 4
    countNumber 6 169 `shouldBe` 0
    countNumber 100000 1000000000 `shouldBe` 16

-- the following line is optional for 8.2
main = hspec spec
