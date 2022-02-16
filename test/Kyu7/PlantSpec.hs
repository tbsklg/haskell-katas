module Kyu7.PlantSpec where

import Kyu7.Plant
import Test.Hspec

-- `spec` of type `Spec` must exist
spec :: Spec
spec = do
  it "handles fixed cases" $ do
    growingPlant 100 10 910 `shouldBe` 10
    growingPlant 10 9 4 `shouldBe` 1
    growingPlant 5 2 5 `shouldBe` 1
    growingPlant 5 2 6 `shouldBe` 2

-- the following line is optional for 8.2
main = hspec spec
