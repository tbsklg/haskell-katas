module Kyu7.CountSpec where

import Kyu7.Count
import Test.Hspec

i1 = [1, 1, 2, 3, 1, 2, 3, 4]

d1 = [1, 3]

i2 = [-18, -31, 81, -19, 111, -888]

d2 = [1, 8, 4]

i3 = [-77, -65, 56, -79, 6666, 222]

d3 = []

i4 = []

d4 = [1, 8, 4]

-- `spec` of type `Spec` must exist
spec :: Spec
spec = do
  it "handles fixed cases" $ do
    countSpecDigits i1 d1 `shouldBe` [(1, 3), (3, 2)]
    countSpecDigits i2 d2 `shouldBe` [(1, 7), (8, 5), (4, 0)]
    countSpecDigits i3 d3 `shouldBe` []
    countSpecDigits i4 d4 `shouldBe` [(1, 0), (8, 0), (4, 0)]

-- the following line is optional for 8.2
main = hspec spec
