module Kyu7.SF38Spec where

import Kyu7.SF38
import Test.Hspec

-- `spec` of type `Spec` must exist
spec :: Spec
spec = do
  it "works on fixed cases" $ do
    houseOfCats 6 `shouldBe` [1, 3]
    houseOfCats 2 `shouldBe` [1]
    houseOfCats 8 `shouldBe` [0, 2, 4]
    houseOfCats 4 `shouldBe` [0, 2]
    houseOfCats 44 `shouldBe` [0, 2, 4, 6, 8, 10, 12, 14, 16, 18, 20, 22]

-- the following line is optional for 8.2
main = hspec spec
