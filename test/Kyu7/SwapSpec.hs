module Kyu7.SwapSpec where

import Kyu7.Swap
import Test.Hspec

-- `spec` of type `Spec` must exist
spec :: Spec
spec = do
  it "works on fixed cases" $ do
    firstReverseTry [1, 2, 3, 4, 5] `shouldBe` [5, 2, 3, 4, 1]
    firstReverseTry [3, 5, 6, 2] `shouldBe` [2, 5, 6, 3]
    firstReverseTry [] `shouldBe` []
    firstReverseTry [111] `shouldBe` [111]

-- the following line is optional for 8.2
main = hspec spec
