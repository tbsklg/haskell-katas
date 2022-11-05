module Kyu7.ClosestSpec where

import Kyu7.Closest
import Test.Hspec

-- `spec` of type `Spec` must exist
spec :: Spec
spec = do
  it "works on fixed cases" $ do
    closestMultiple10 54 `shouldBe` 50
    closestMultiple10 67 `shouldBe` 70

-- the following line is optional for 8.2
main = hspec spec
