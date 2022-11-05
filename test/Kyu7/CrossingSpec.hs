module Kyu7.CrossingSpec where

import Kyu7.Crossing
import Test.Hspec

spec :: Spec
spec = do
  it "works on fixed cases" $ do
    crossingSum [[1, 1, 1, 1], [2, 2, 2, 2], [3, 3, 3, 3]] 1 3 `shouldBe` 12
    crossingSum [[1, 1], [3, 3], [1, 1], [2, 2]] 3 0 `shouldBe` 9
    crossingSum [[100]] 0 0 `shouldBe` 100
    crossingSum [[1, 2, 3, 4, 5]] 0 0 `shouldBe` 15
    crossingSum [[1], [2], [3], [4], [5]] 0 0 `shouldBe` 15

-- the following line is optional for 8.2
main = hspec spec
