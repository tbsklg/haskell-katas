module Kyu7.SF2Spec where

import Test.Hspec
import Kyu7.SF2

-- `spec` of type `Spec` must exist
spec :: Spec
spec = do
  it "fixed cases Nums" $ do
    circleOfNumbers 10 2 `shouldBe` 7
    circleOfNumbers 10 7 `shouldBe` 2
    circleOfNumbers 4 1  `shouldBe` 3
    circleOfNumbers 6 3  `shouldBe` 0
    circleOfNumbers 20 0 `shouldBe` 10

-- the following line is optional for 8.2
main = hspec spec
