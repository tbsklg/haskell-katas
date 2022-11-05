module Kyu7.SF1Spec where

import Kyu7.SF1
import Test.Hspec

-- `spec` of type `Spec` must exist
spec :: Spec
spec = do
  it "works on a few fixed samples" $ do
    arrayPreviousLess [3, 5, 2, 4, 5] `shouldBe` [-1, 3, -1, 2, 4]
    arrayPreviousLess [2, 2, 1, 3, 4, 5, 5, 3] `shouldBe` [-1, -1, -1, 1, 3, 4, 4, 1]
    arrayPreviousLess [3, 2, 1] `shouldBe` [-1, -1, -1]

-- the following line is optional for 8.2
main = hspec spec
