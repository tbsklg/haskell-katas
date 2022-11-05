module Kyu7.SF179Spec where

import Kyu7.SF179
import Test.Hspec

-- `spec` of type `Spec` must exist
spec :: Spec
spec = do
  it "finds the sum" $ do
    fraction (90, 120) `shouldBe` 7
    fraction (2, 4) `shouldBe` 3
    fraction (100, 1000) `shouldBe` 11
    fraction (3, 15) `shouldBe` 6
    fraction (114, 200) `shouldBe` 157
    fraction (3, 118) `shouldBe` 121

-- the following line is optional for 8.2
main = hspec spec
