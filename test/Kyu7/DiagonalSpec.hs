module Kyu7.DiagonalSpec where
-- Tests can be written using Hspec http://hspec.github.io/
-- Replace this with your own tests.

import Test.Hspec
import Kyu7.Diagonal

-- `spec` of type `Spec` must exist
spec :: Spec
spec = do
  it "adds the diagonals" $ do
    diagonalSum [[1, 2], [3, 4]] `shouldBe` 5
    diagonalSum [[1, 2, 3], [4, 5, 6], [7, 8, 9]] `shouldBe` 15
    diagonalSum [[1, 2, 3, 4], [5, 6, 7, 8], [9, 10, 11, 12], [13, 14, 15, 16]] `shouldBe` 34
  
-- the following line is optional for 8.2
main = hspec spec
