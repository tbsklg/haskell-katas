module Kyu7.SF119Spec where

import Kyu7.SF119
import Test.Hspec

-- `spec` of type `Spec` must exist
spec :: Spec
spec = do
  it "works on fixed cases" $ do
    passTheBill 8 3 3 `shouldBe` 2
    passTheBill 13 4 7 `shouldBe` (-1)
    passTheBill 7 4 3 `shouldBe` 0
    passTheBill 11 4 1 `shouldBe` 2
    passTheBill 11 5 1 `shouldBe` 1
    passTheBill 11 6 1 `shouldBe` 0
    passTheBill 11 4 4 `shouldBe` 2
    passTheBill 11 5 4 `shouldBe` 1
    passTheBill 11 5 5 `shouldBe` 1
    passTheBill 11 4 6 `shouldBe` (-1)
    passTheBill 11 4 5 `shouldBe` 2
    passTheBill 15 9 3 `shouldBe` 0

-- the following line is optional for 8.2
main = hspec spec
