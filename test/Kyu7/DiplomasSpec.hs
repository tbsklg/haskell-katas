module Kyu7.DiplomasSpec where

import Kyu7.Diplomas
import Test.Hspec

-- `spec` of type `Spec` must exist
spec :: Spec
spec = do
  it "works on fixed cases" $ do
    diplomas 2 3 10 `shouldBe` 9
    diplomas 1 1 1 `shouldBe` 1
    diplomas 567 120 129 `shouldBe` 3120
    diplomas 17 21 0 `shouldBe` 0
    diplomas 1 239 7 `shouldBe` 239
    diplomas 239 239 7 `shouldBe` 717
    diplomas 3 4 12 `shouldBe` 12

-- the following line is optional for 8.2
main = hspec spec
